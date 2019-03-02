function DriveSpace {
param( [string] $strComputer) 
"$strComputer ---- Free Space (percentage) ----"

# Does the server responds to a ping (otherwise the WMI queries will fail)

$query = "select * from win32_pingstatus where address = '$strComputer'"
$result = Get-WmiObject -query $query
if ($result.protocoladdress) {

    # Get the Disks for this computer
    $colDisks = get-wmiobject Win32_LogicalDisk -computername $strComputer -Filter "DriveType = 3"

    # For each disk calculate the free space
    foreach ($disk in $colDisks) {
       if ($disk.size -gt 0) {$PercentFree = [Math]::round((($disk.freespace/$disk.size) * 100))}
       else {$PercentFree = 0}

  $Drive = $disk.DeviceID
       "$strComputer - $Drive - $PercentFree"

       # if  < 20% free space, log to a file
       if ($PercentFree -le 20) {"$strComputer - $Drive - $PercentFree" | out-file -append -filepath "Space.txt"}
    }
}
}

foreach ($computer in servers.txt) {DriveSpace "$computer"}
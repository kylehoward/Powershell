#Create a table with the columns DeviceID, Freespace, and Size
$DiskInfo = (get-wmiobject -Class Win32_Logicaldisk | Select-Object -Property DeviceID,Freespace,Size)

Write-Host -Message 'Getting information on all disks.'

Start-Sleep -Seconds 1

Write-Host -Message $DiskInfo | Out-Gridview -Title 'Stuffies'

$DiskFree = ((( $DiskInfo[0].FreeSpace) / ( $DiskInfo[0].Size )) * 100 )

Write-Host $DiskFree"%"
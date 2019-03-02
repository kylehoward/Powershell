$DiskReport | Select-Object @{Label = "Server Name"; Expression = {$_.SystemName}},
@{Label = "Drive Letter"; Expression = {$_.DeviceID}},
@{Label = "Total Capacity (GB)"; Expression = {"{0:N1}" -f ( $_.Size / 1gb)}},
@{Label = "Free Space (GB)"; Expression = {"{0:N1}" -f ( $_.Freespace / 1gb ) }},
@{Label = 'Free Space (%)'; Expression = {"{0:P0}" -f ($_.freespace / $_.size)}} |
    Export-Csv -path ".\DiskReport_$logDate.csv" -NoTypeInformation

If (Test-Path 'C:')
{
    $CDisk = GWMI Win32_LogicalDisk -Filter "DeviceID='C:'"
    $CDisk = @{'Size'      = [Math]::Round($CDisk.Size / 1GB);
               'FreeSpace' = [Math]::Round($CDisk.FreeSpace / 1GB)}
    $CDisk.Add('Usage', ($CDisk.Size - $CDisk.FreeSpace))
    $CDisk.Add('PercentUsage', [Math]::Round(($CDisk.Usage / $CDisk.Size) * 100))

    "C: drive free space: $($CDisk.FreeSpace)GB"
    "C: drive capacity:   $($CDisk.Size)GB"
    '--------------------------------'
    "Disk usage:          $($CDisk.Usage)GB ($($CDisk.PercentUsage)%)"
}
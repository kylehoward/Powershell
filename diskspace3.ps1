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
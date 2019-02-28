#!/usr/bin/env powershell
$cptr = [System.Net.Dns]::GetHostName()
write-host $cptr

$disk = ([wmi]"\\$cptr\root\cimv2:Win32_logicalDisk.DeviceID='c:'")

"$_(cptr) C: has {0:#.0} GB free of {1:#.0} GB Total" -f ($disk.FreeSpace/1GB),($disk.Size/1GB) | write-output

write-host {"\\$cptr\root\cimv2:Win32_logicalDisk.DeviceID='c:'"}

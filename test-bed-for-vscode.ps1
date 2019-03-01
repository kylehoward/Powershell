$DiskReport | 

Select-Object @{Label = "Server Name";Expression = {$_.SystemName}},
          @{Label = "Drive Letter";Expression = {$_.DeviceID}},
          @{Label = "Total Capacity (GB)";Expression = {"{0:N1}" -f( $_.Size 
 / 1gb)}},
          @{Label = "Free Space (GB)";Expression = {"{0:N1}" -f( 
 $_.Freespace / 1gb ) }},
          @{Label = 'Free Space (%)'; Expression = {"{0:P0}" -f 
 ($_.freespace/$_.size)}} |

Export-Csv -path "c:\data\server\ServerStorageReport\DiskReport\DiskReport_$logDate.csv" -NoTypeInformation 
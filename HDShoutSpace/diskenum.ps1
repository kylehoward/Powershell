#Create a table with the columns DeviceID, Freespace, and Size
$DiskInfo = (get-wmiobject -Class Win32_Logicaldisk | Select-Object -Property DeviceID,Freespace,Size)

Write-Host -Message 'Getting information on all disks.'

Start-Sleep -Seconds 1

Write-Host -Message $DiskInfo | Out-Gridview -Title 'Stuffies'

$DiskFree = (($DiskInfo.Size) - (DiskInfo.FreeSpace))

Write-Host ($DiskInfo.DeviceID/: $DiskFree)



# SIG # Begin signature block
# MIID2AYJKoZIhvcNAQcCoIIDyTCCA8UCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUSC1T5TBQMhILZ5MLOyweHtfy
# xRugggH5MIIB9TCCAV6gAwIBAgIQJjrNvxmMTo9KzeFKasJHiDANBgkqhkiG9w0B
# AQUFADAVMRMwEQYDVQQDDApQb3dlclNoZWxsMB4XDTE5MDMwMjE4MTEwMVoXDTIz
# MDMwMjAwMDAwMFowFTETMBEGA1UEAwwKUG93ZXJTaGVsbDCBnzANBgkqhkiG9w0B
# AQEFAAOBjQAwgYkCgYEAytOlA3Q9Hlc3XbKGaJEkAIeT4q10gnxo2Ow/G0g+FRs6
# Ncj1/Ccwk5xuDZU3f/DK4GyGVZsvDaKsxY1kT0/B6IaNvQdRpPn+MeljIt+htgC0
# mvsfjN9CKLEI9izrCeTYY4TfIOzY4U8IRMSgM8bP9uz6apjwKK124zzL+umlB7kC
# AwEAAaNGMEQwEwYDVR0lBAwwCgYIKwYBBQUHAwMwHQYDVR0OBBYEFAoPnNrgs/1W
# nUTJtMaOKY1pDvG4MA4GA1UdDwEB/wQEAwIHgDANBgkqhkiG9w0BAQUFAAOBgQBu
# PP6OtvbIKhgJXY1G7EZJsUf9aLN0+3iY7rVRTZOn66+W/u+R9/8QboVYu7zimeZY
# 5qcV6TKE7hrg8bBCxKs2mwrVJxlBbGPQEc6kbqYlmEIB7C9uXahN6Yhz2pkUEITs
# pN15QWhpmtJis5E+XCb0ghxrH388mV/bHiw2HAVbZjGCAUkwggFFAgEBMCkwFTET
# MBEGA1UEAwwKUG93ZXJTaGVsbAIQJjrNvxmMTo9KzeFKasJHiDAJBgUrDgMCGgUA
# oHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYB
# BAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0B
# CQQxFgQUFY0MsS95eznzETndumjATHwHEKAwDQYJKoZIhvcNAQEBBQAEgYDEQ1mh
# 47lsAqtGWDoRcOqExezdyMeAIVLTRFry3Nx7bTmGQ8riSZmevzdjzuZYA0Wy4gED
# bSAKQsR8+NoBSS/2HQAVwdsf1zKOhuqe+EVJz9N23hN6Ne2s2NzcSrFhhxaimFw9
# 7qWF1qmHlnQieKJcpzzRA08YrHuXEBi9IyIswQ==
# SIG # End signature block

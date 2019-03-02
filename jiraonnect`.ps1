Import-Module -Name JiraPS

Set-JiraConfigServer -Server 'https://kyle-howard.atlassian.net'

$cred = Get-Credential -UserName 'Alert'

#Get-JiraIssue -Key 'inc-1' -Credential $cred

New-JiraSession -Credential $cred
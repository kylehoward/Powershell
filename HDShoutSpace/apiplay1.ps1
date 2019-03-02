$url = "http://srv.local/api/login" +
    "?order=desc&sort=activity&tagged=powershell&pagesize=10&site=stackoverflow"
$result = Invoke-RestMethod $url
$result.Items | Foreach-Object { $_.Title; $_.Link; "" }
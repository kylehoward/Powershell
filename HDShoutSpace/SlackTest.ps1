#Load the necessary module to let powershell use Slack
#The module can be downloaded with Install-Module PSSlaack
#From an administrative prompt.  This is a one-time install.

import-module -Name PSSlack

#Setting the URI for slack message
$URI = "https://hooks.slack.com/services/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"

Write-Host "Using webhook at: $URI"

Send-SlackMessage -URI $URI `
                  -Channel 'test' `
                  -Parse full `
                  -Text 'Hello "@Kyle Howard", join me in #devnull!'
                  
                  # Send a message to @wframe (not a channel), parsing the text to linkify usernames and channels

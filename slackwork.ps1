New-SlackMessageAttachment -Color $([System.Drawing.Color]::red) `
                           -Title 'The System Is Down' `
                           -TitleLink https://www.youtube.com/watch?v=TmpRs7xN06Q `
                           -Text 'Please Do The Needful' `
                           -Pretext 'Everything is broken' `
                           -AuthorName 'SCOM Bot' `
                           -AuthorIcon 'http://ramblingcookiemonster.github.io/images/tools/wrench.png' `
                           -Fallback 'Your client is bad' |
    New-SlackMessage -Channel 'test' `
                     -IconEmoji :bomb: |
    Send-SlackMessage -TOKEN 'xoxp-562955663906-563280409845-563511504369-ce957def80225185c0780910c6cccc51'
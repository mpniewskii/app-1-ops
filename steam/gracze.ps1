$ErrorActionPreference = 'Stop'
$appid = 570
$url = "https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=$appid"
$json = Invoke-RestMethod -Uri $url -UseBasicParsing -TimeoutSec 20

Write-Output "Current players: $($json.response.player_count)"
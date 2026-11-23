$ErrorActionPreference = 'Stop'
$appid = 570
$url = "https://api.steampowered.com/ISteamNews/GetNewsForApp/v2/?appid=$appid&count=1&maxlength=300&feeds=steam_community_announcements"
$json = Invoke-RestMethod -Uri $url -UseBasicParsing -TimeoutSec 20

$news = $json.appnews.newsitems[0]
Write-Output "Title: $($news.title)"
Write-Output "Link: $($news.url)"
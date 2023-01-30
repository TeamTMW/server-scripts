$path = Read-Host "Enter the path to the folder you want to delete old files from"
$days = Read-Host "Got it, now how many days back should i not delete the files (e.g. 30 days will keep the files modifies in the last 30 days, the older ones will get deleted)"

Get-ChildItem -Path $path -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-$days))} | Remove-Item -Force

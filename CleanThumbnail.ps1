Remove-Item "$env:USERPROFILE\AppData\Local\Microsoft\Windows\Explorer\thumbcache_*" -Force -ErrorAction SilentlyContinue

Remove-Item "$env:SystemRoot\Thumbs.db" -Force -ErrorAction SilentlyContinue

Write-Host "Thumbnail cache cleaned successfully."

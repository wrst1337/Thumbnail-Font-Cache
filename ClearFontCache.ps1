Stop-Process -Name "Explorer" -Force -ErrorAction SilentlyContinue
Remove-Item "$env:LOCALAPPDATA\Microsoft\Windows\Fonts\*" -Force -Recurse -ErrorAction SilentlyContinue

Start-Process -FilePath "explorer.exe" -ErrorAction SilentlyContinue

Write-Host "Font cache cleared successfully."

Start-Sleep -Seconds 0.7

$explorerProcess = Get-Process -Name explorer -ErrorAction SilentlyContinue
if ($explorerProcess -ne $null) {
    Stop-Process -Id $explorerProcess.Id -Force
    Write-Host "File Explorer closed successfully."
} else {
    Write-Host "File Explorer process not found."
}
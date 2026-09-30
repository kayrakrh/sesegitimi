@echo off
echo Windows hatirlaticilari kuruluyor (09:00, 12:00, 15:00, 18:00, 21:00)...
for %%T in (09 12 15 18 21) do schtasks /create /f /tn "SesAntrenmani-%%T" /sc daily /st %%T:00 /tr "powershell -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File \"%~dp0hatirlat.ps1\"" >nul
echo Tamam! Uygulama kapali olsa bile gun icinde bildirim gelecek.
echo Saatleri degistirmek icin bu dosyayi duzenleyip "09 12 15 18 21" kismini degistir.
pause

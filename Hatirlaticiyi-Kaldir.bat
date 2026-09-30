@echo off
for %%T in (09 12 15 18 21) do schtasks /delete /f /tn "SesAntrenmani-%%T" >nul 2>&1
echo Hatirlaticilar kaldirildi.
pause

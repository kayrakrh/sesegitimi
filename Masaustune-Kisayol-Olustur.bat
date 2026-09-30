@echo off
powershell -NoProfile -Command "$s=(New-Object -ComObject WScript.Shell).CreateShortcut([Environment]::GetFolderPath('Desktop')+'\Ses Antrenmani.lnk');$s.TargetPath='%~dp0Baslat.bat';$s.WorkingDirectory='%~dp0';$s.IconLocation='%~dp0icon.ico';$s.WindowStyle=7;$s.Save()"
echo Masaustune "Ses Antrenmani" kisayolu eklendi.
pause

@echo off

echo Install chocolatey

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation
pause

choco install chocolatey_packages.config -y
call refreshenv

choco pin add -n=jetbrainstoolbox

pause

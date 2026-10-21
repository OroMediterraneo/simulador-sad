@echo off
chcp 65001 >nul
title Simulador SAD - Interruptor: ENCENDRE (ON)
cls
echo ===================================================================
echo     🟢 SIMULADOR SAD - INTERRUPTOR DE CONTROL: ENCENDRE (ON)
echo ===================================================================
echo.
echo Canviant estat a status.json (active: true)...

powershell -NoProfile -Command "(Get-Content -Raw 'status.json') -replace '\"active\":\s*false', '\"active\": true' | Set-Content -Encoding utf8 'status.json'"

echo [OK] El fitxer status.json s'ha configurat com a ENCÈS (active: true).
echo.
set /p sync="Vols sincronitzar l'encesa a GitHub Pages ara mateix? (S/N): "
if /i "%sync%"=="s" (
    echo.
    echo Pujant actualitzacio a GitHub Pages...
    git add status.json
    git commit -m "Seguretat: Encendre aplicacio Simulador SAD (status: online)"
    git push origin main
    echo.
    echo ===================================================================
    echo  [EXIT] El Simulador SAD ha estat ENCÈS a nivell global a GitHub Pages!
    echo ===================================================================
) else (
    echo.
    echo [INFO] Encesa configurada localment. Quan vulguis fer-la global a GitHub Pages, executa 'git push'.
)
echo.
pause

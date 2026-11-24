
@echo off
chcp 65001 >nul
title Git Update

echo ================================
echo       GIT UPDATE
echo ================================
echo.

echo Pobieranie aktualnych zmian z GitHuba...
echo.

git pull origin main

if errorlevel 1 (
    echo.
    echo BLAD: Nie udalo sie pobrac zmian!
    pause
    exit /b 1
)

echo.
echo Aktualizacja zakonczona pomyslnie!
echo.

pause

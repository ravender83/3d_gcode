@echo off
chcp 65001 >nul
title Git Commit

echo ================================
echo        GIT COMMIT
echo ================================
echo.

set /p opis="Podaj opis commita: "

if "%opis%"=="" (
    echo.
    echo BLAD: Opis nie moze byc pusty!
    pause
    exit /b 1
)

echo.
echo Dodawanie plikow...
git add .

echo.
echo Tworzenie commita...
git commit -m "%opis%"

if errorlevel 1 (
    echo.
    echo BLAD: Nie udalo sie wykonac commita.
    pause
    exit /b 1
)

echo.
echo Commit zostal wykonany pomyslnie!
echo.

pause


@echo off
chcp 65001 >nul
title Git Push

echo ================================
echo        GIT PUSH
echo ================================
echo.

echo Wysylanie commitow na GitHuba...
echo.

git push origin main

if errorlevel 1 (
    echo.
    echo BLAD: Nie udalo sie wyslac commitow!
    pause
    exit /b 1
)

echo.
echo Commity zostaly wyslane na GitHuba!
echo.

pause

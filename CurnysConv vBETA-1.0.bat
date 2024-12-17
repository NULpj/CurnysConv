@echo off
setlocal enabledelayedexpansion
title CurnysConv vBETA-1.0
start curnyslist.txt >nul

curl --version >nul 2>&1
if errorlevel 1 (
echo Curl not found. Please install curl first.
pause
exit /b
)

:start
cls
echo ====================================================
echo CURRENCY CONVERSION
echo ==================================================
echo.

set /p from_currency=Enter the source currency (ex: USD):

set /p to_currency=Enter the destination currency (ex: BTC):

set /p value=Enter the amount to convert (ex: 100):

set result=curl "decapi.me/misc/currency?from=!from_currency!^&to=!to_currency!^&value=!value!"

)

echo =============================================================
!result!
echo.
echo =================================================
echo.
pause
goto start
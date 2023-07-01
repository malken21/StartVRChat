@echo off

rem "vrmonitor.exe" が 起動するまで 待機 (1秒ごとに 起動しているか確認)
:loop
tasklist | find "vrmonitor.exe" >nul 2>&1
if errorlevel 1 (
    rem 待機
    timeout /t 1 /nobreak >nul
    goto loop
)
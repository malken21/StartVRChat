@echo off

rem "第1引数" が 起動するまで 待機 ( "第2引数" 秒ごとに 起動しているか確認)
:loop
tasklist | find %1 >nul 2>&1
if errorlevel 1 (
    rem 待機
    timeout /t %2 /nobreak >nul
    goto loop
)

@echo off

rem SteamVR が起動するまで 待機
call ./util/wait_task.bat vrmonitor.exe 3

pause
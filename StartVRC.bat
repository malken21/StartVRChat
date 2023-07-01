@echo off

rem ----------設定部分---------- start

rem SteamVR を起動するURL
set SteamVR="steam://rungameid/250820"

rem VRChat を起動するURL
set VRChat="steam://rungameid/438100"

rem OVR Advanced Settings を起動するURL
set OVR_Advanced_Settings="steam://rungameid/1009850"

rem ----------設定部分---------- end


rem SteamVR 起動
start "" %SteamVR%
rem SteamVR が起動するまで 待機
call ./util/wait_vrmonitor.bat

rem VRChat 起動
start "" %VRChat%

rem OVR Advanced Settings 起動
start "" %OVR_Advanced_Settings%

@echo off

rem ----------設定部分---------- start

rem SteamVR を起動するURL
set SteamVR="steam://rungameid/250820"

rem OVR Advanced Settings を起動するURL
set OVR_Advanced_Settings="steam://rungameid/1009850"

rem VRChat を起動するURL
set VRChat="steam://rungameid/438100//-screen-width 300 -screen-height 200"

rem ----------設定部分---------- end


rem SteamVR 起動
call ./util/task_start.bat %SteamVR% "SteamVR"
rem SteamVR の起動が完了するまで 待機
call ./util/task_wait.bat vrmonitor.exe 3

rem VRChat 起動
call ./util/task_start.bat %VRChat% "VRChat"
rem VRChat の起動が完了するまで 待機
call ./util/task_wait.bat VRChat.exe 3

rem OVR Advanced Settings 起動
call ./util/task_start.bat %OVR_Advanced_Settings% "OVR Advanced Settings"

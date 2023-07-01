@echo off

rem ----------設定部分---------- start

rem SteamVR を起動するURL
set SteamVR="steam://rungameid/250820"

rem VRChat を起動するURL
set VRChat="steam://rungameid/438100"

rem OVR Advanced Settings を起動するURL
set OVR_Advanced_Settings="steam://rungameid/1009850"

rem OBS Studio のパス
set OBS_Studio_Path="C:\Program Files\obs-studio\bin\64bit"
rem OBS Studio を起動するコマンド
set OBS_Studio_Start=obs64.exe --startrecording

rem ----------設定部分---------- end


rem SteamVR 起動
start "" %SteamVR%
rem SteamVR が起動するまで 待機
call ./util/wait_vrmonitor.bat

rem VRChat 起動
start "" %VRChat%

rem OVR Advanced Settings 起動
start "" %OVR_Advanced_Settings%

rem OBS Studio があるディレクトリに移動
cd /d %OBS_Studio_Path%
rem OBS Studio 起動
start "" %OBS_Studio_Start%

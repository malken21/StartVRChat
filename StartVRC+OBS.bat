@echo off

rem ----------設定部分---------- start

rem SteamVR を起動するURL (exeファイル指定でも可能)
set SteamVR="steam://rungameid/250820"

rem VRChat を起動するURL (exeファイル指定でも可能)
set VRChat="steam://rungameid/438100"

rem OVR Advanced Settings を起動するURL (exeファイル指定でも可能)
set OVR_Advanced_Settings="steam://rungameid/1009850"

rem OBS Studio のパス
set OBS_Studio_Path="C:\Program Files\obs-studio\bin\64bit"
rem OBS Studio を起動するコマンド
set OBS_Studio_Start="obs64.exe --startrecording"

rem ----------設定部分---------- end


rem SteamVR 起動
call :task_start %SteamVR% "SteamVR"
rem SteamVR の起動が完了するまで 待機
call :task_wait vrmonitor.exe 3

rem VRChat 起動
call :task_start %VRChat% "VRChat"
rem VRChat の起動が完了するまで 待機
call :task_wait VRChat.exe 3

rem OVR Advanced Settings 起動
call :task_start %OVR_Advanced_Settings% "OVR Advanced Settings"

rem OBS Studio があるディレクトリに移動
cd /d %OBS_Studio_Path%
rem OBS Studio 起動
call :task_start %OBS_Studio_Start% "OBS Studio"

rem 処理終了
exit /b


rem ----------関数---------- start

:task_start
rem "第1引数" を 実行
start "" %~1
rem コンソールに文字 出力
echo %~2 Start!!
exit /b

:task_wait
rem "第1引数" が 起動するまで 待機
:loop
tasklist | find "%~1" >nul 2>&1
if errorlevel 1 (
    rem "第2引数" 秒ごとに 起動しているか確認
    timeout /t %2 /nobreak >nul
    goto loop
)

rem ----------関数---------- end
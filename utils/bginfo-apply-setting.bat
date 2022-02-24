@echo off

SET SCRIPT_PATH=%~dp0

SET SETTING_FILE="%SCRIPT_PATH%\bginfo-setting.bgi"

WHERE bginfo64
if /I %ERRORLEVEL% NEQ 0 (

    if exist C:\ProgramData\chocolatey\lib\bginfo\Tools\bginfo64.exe (
        @rem file exists
        C:\ProgramData\chocolatey\lib\bginfo\Tools\bginfo64.exe %SETTING_FILE% /timer:0 /nolicprompt /silent
    ) else (
        @rem file doesn't exist
        goto :EOF
    )

) else (
    bginfo64.exe %SETTING_FILE% /timer:0 /nolicprompt /silent
)

:EOF
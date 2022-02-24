@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%

SET SETTING_FILE="%currpath%\bginfo-setting.bgi"

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
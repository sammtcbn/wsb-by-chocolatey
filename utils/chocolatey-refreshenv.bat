@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"

WHERE refreshenv
if /I %ERRORLEVEL% NEQ 0 (

    if exist C:\ProgramData\chocolatey\bin\RefreshEnv.cmd (
        @rem file exists
        call C:\ProgramData\chocolatey\bin\RefreshEnv.cmd
    ) else if exist "%currpath%\utils\RefreshEnv.cmd" (
	    call "%currpath%\utils\RefreshEnv.cmd"
	) else (
        @rem file doesn't exist
		echo refreshenv not found
		timeout /t 2
        goto END
    )
	
) else (
    refreshenv
)

:END

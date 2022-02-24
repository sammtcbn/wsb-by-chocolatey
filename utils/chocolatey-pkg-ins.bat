@echo off

if "%~1"=="" goto END

where /q choco
if errorlevel 0 (
    if exist C:\wsb-tmp (
        choco install -y %* >> C:\wsb-tmp\chocolatey.log
    ) else (
        choco install -y %*
    )
)

:END
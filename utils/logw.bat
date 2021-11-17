@echo off

if "%~1"=="" goto END

if exist C:\wsb-tmp (
    echo %* >> C:\wsb-tmp\log.txt
)

:END
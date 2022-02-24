@echo off

if "%~1"=="" goto END

if exist C:\wsb-tmp (
	pip install %* >> C:\wsb-tmp\pip-log.txt
) else (
    pip install %*
)

:END
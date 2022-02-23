@echo off

if "%~1"=="" goto END

if exist C:\wsb-tmp (
	npm install -g %* >> C:\wsb-tmp\npm-log.txt
)

:END
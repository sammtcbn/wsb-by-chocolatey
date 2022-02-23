@echo off

if "%~1"=="" goto END

pip install %*

:END
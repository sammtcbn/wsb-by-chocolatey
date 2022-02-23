@echo off

if "%~1"=="" goto END

npm install -g %*

:END

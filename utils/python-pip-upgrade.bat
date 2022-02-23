@echo off

WHERE pip
if /I %ERRORLEVEL% NEQ 0 (
	echo pip not found in path
    timeout /t 3	
) else (
    rem pip install --upgrade pip
	pip install --upgrade pip --user
)

:END

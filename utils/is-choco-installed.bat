@echo off
where /q choco
IF ERRORLEVEL 1 (
    rem ECHO choco not found
    exit /b 1
) ELSE (
    rem ECHO choco found
    exit /b 0
)

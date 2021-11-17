@echo off
if "%UserName%" == "WDAGUtilityAccount" (
  rem echo I am in wsb
  exit /b 0
) else (
  rem echo I am not in wsb
  exit /b 1
)
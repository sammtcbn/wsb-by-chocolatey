@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"

rem init
call utils\is-in-wsb.bat
if %errorlevel% equ 0 (
  call utils\folder-create.bat C:\wsb-tmp
  call utils\logw.bat start time - %date% %time%
)

call utils\command-prompt-encoding-utf8.bat
call utils\wait-network-ready.bat

rem chocolatey
call utils\chocolatey-install.bat

rem =======================================================
rem Custom begin
rem =======================================================

call utils\chocolatey-pkg-ins.bat 7zip
call utils\chocolatey-pkg-ins.bat notepadplusplus
call utils\chocolatey-pkg-ins.bat googlechrome

call utils\chocolatey-pkg-ins.bat git.install
call utils\chocolatey-pkg-ins.bat winmerge

call utils\chocolatey-pkg-ins.bat r.project

rem =======================================================
rem Custom end
rem =======================================================


rem finish
call utils\is-in-wsb.bat
if %errorlevel% equ 0 (
  call utils\generate-ip.bat
  call utils\generate-boot-ok.bat
  call utils\logw.bat end time - %date% %time%
)
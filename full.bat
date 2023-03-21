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

rem cvs
call utils\chocolatey-pkg-ins.bat git.install

rem compare
call utils\chocolatey-pkg-ins.bat winmerge

rem compress
call utils\chocolatey-pkg-ins.bat 7zip

rem terminal
call utils\chocolatey-pkg-ins.bat microsoft-windows-terminal --pre

rem editor
call utils\chocolatey-pkg-ins.bat notepadplusplus
call utils\chocolatey-pkg-ins.bat libreoffice
call utils\chocolatey-pkg-ins.bat adobereader

rem web browser
call utils\chocolatey-pkg-ins.bat googlechrome
call utils\chocolatey-pkg-ins.bat firefox
call utils\chocolatey-pkg-ins.bat brave --pre
call utils\chocolatey-pkg-ins.bat opera
call utils\chocolatey-pkg-ins.bat microsoft-edge

rem node.js LTS
call utils\chocolatey-pkg-ins.bat nodejs-lts

rem deno
call utils\chocolatey-pkg-ins.bat deno

rem python
call utils\chocolatey-pkg-ins.bat python
call utils\chocolatey-refreshenv.bat
call utils\python-pip-upgrade.bat

rem python package

rem go
call utils\chocolatey-pkg-ins.bat golang

rem R
call utils\chocolatey-pkg-ins.bat r.project

rem kotlin
call utils\chocolatey-pkg-ins.bat kotlinc

rem flutter
call utils\chocolatey-pkg-ins.bat flutter --pre

rem Android development
call utils\chocolatey-pkg-ins.bat androidstudio

rem SQLite
call utils\chocolatey-pkg-ins.bat sqlite

rem MySQL
call utils\chocolatey-pkg-ins.bat mysql

rem InfluxDB
call utils\chocolatey-pkg-ins.bat influxdb

rem MongoDB
call utils\chocolatey-pkg-ins.bat mongodb --pre

rem PostgreSQL
call utils\chocolatey-pkg-ins.bat postgresql

rem Redis
call utils\chocolatey-pkg-ins.bat redis-desktop-manager

rem database tools
call utils\chocolatey-pkg-ins.bat robo3t
call utils\chocolatey-pkg-ins.bat dbeaver
call utils\chocolatey-pkg-ins.bat heidisql
call utils\chocolatey-pkg-ins.bat sqlitebrowser

rem Visual Studio Code
call utils\chocolatey-pkg-ins.bat vscode
call utils\chocolatey-pkg-ins.bat vscode-python
call utils\chocolatey-pkg-ins.bat vscode-cpptools
call utils\chocolatey-pkg-ins.bat vscode-go

rem Visual Studio
call utils\chocolatey-pkg-ins.bat visualstudio2022community
call utils\chocolatey-pkg-ins.bat visualstudio2022-workload-nativedesktop

rem network tools
call utils\chocolatey-pkg-ins.bat postman
call utils\chocolatey-pkg-ins.bat wireshark
call utils\chocolatey-pkg-ins.bat angryip

rem storage tools
call utils\chocolatey-pkg-ins.bat rclone

rem http server
call utils\chocolatey-pkg-ins.bat nginx

rem cloud service
call utils\chocolatey-pkg-ins.bat azcopy10
call utils\chocolatey-pkg-ins.bat microsoftazurestorageexplorer

rem MQTT.fx
call utils\chocolatey-pkg-ins.bat mqttfx

rem entertainment
call utils\chocolatey-pkg-ins.bat k-litecodecpackfull
call utils\chocolatey-pkg-ins.bat vlc
call utils\chocolatey-pkg-ins.bat nircmd
rem call utils\cnircmd-volume-highest.bat
rem call utils\nircmd-mute.bat

rem misc
call utils\chocolatey-pkg-ins.bat innosetup
call utils\chocolatey-pkg-ins.bat advanced-installer
call utils\chocolatey-pkg-ins.bat jq
call utils\chocolatey-pkg-ins.bat bginfo
call utils\bginfo-apply-setting.bat

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

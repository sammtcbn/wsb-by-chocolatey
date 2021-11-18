@echo off
reg add "HKLM\Software\Microsoft\Command Processor" /v Autorun /d "chcp 65001 >NUL" /f
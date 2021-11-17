@echo off
set folder=%1
if not exist %folder% (
    mkdir %folder%
)
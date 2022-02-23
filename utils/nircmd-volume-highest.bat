@echo off

WHERE nircmd
if /I %ERRORLEVEL% NEQ 0 (
    goto END
)

nircmd setsysvolume 65535

:END

@rem refer to https://www.nirsoft.net/utils/nircmd.html

@echo off
@echo off
set arg1=%1
IF [%1]==[] (
wsatoolbox.hta
) ELSE (
installAPK.bat "%arg1%"
)

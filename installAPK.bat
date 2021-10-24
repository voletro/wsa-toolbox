@echo off
echo Installing...
set arg1=%1
adb.exe disconnect
adb.exe connect 127.0.0.1:58526
adb.exe install %arg1%
echo The APK File has been installed. Shortcut Available in the Start Menu.
pause
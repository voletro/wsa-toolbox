@echo off
echo ADB Shell
adb.exe disconnect
adb connect 127.0.0.1:58526
adb shell
pause
@echo off
echo Installing Launcher...
adb.exe disconnect
adb.exe connect 127.0.0.1:58526
adb.exe install android-launcher.apk
echo The Android App launcher has been installed. Shortcut Available in the Start Menu.
pause
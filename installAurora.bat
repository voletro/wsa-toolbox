@echo off
echo Downloading Latest Aurora Store APK...
call winhttpjs.bat "https://f-droid.org/repo/com.aurora.store_38.apk" -saveTo "aurora.apk"
echo Downloaded.
echo Installing...
adb.exe disconnect
adb.exe connect 127.0.0.1:58526
adb.exe install aurora.apk
echo The Aurora Store has successfully been installed. Shortcut Available in the Start Menu.
pause
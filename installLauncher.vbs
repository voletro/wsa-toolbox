serviceName = "WsaService"

Set wmi = GetObject("winmgmts://./root/cimv2")
state = wmi.Get("Win32_Service.Name='" & serviceName & "'").State
If (state = "Stopped") Then
	MsgBox "The Android Subsystem Service (WsaService) is not running. Please start it by opening an Android Application or the ''Files'' app from the WSA Settings App." & vbcrlf & vbcrlf & "We recommend setting the ''Subsystem resources'' setting to ''Continuous'' to prevent the service from stopping."
Else
		Set objShell = CreateObject("Wscript.Shell")
    	Item = "installLauncher.bat"
    	objShell.Run Item
End If


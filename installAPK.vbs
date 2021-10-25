serviceName = "WsaService"

Set wmi = GetObject("winmgmts://./root/cimv2")
state = wmi.Get("Win32_Service.Name='" & serviceName & "'").State
If (state = "Stopped") Then
	MsgBox "The Android Subsystem Service (WsaService) is not running. Please start it by opening an Android Application or the ''Files'' app from the WSA Settings App." & vbcrlf & vbcrlf & "We recommend setting the ''Subsystem resources'' setting to ''Continuous'' to prevent the service from stopping."
Else
	Function GetFileDlgEx(sIniDir,sFilter,sTitle) 
	Set oDlg = CreateObject("WScript.Shell").Exec("mshta.exe ""about:<object id=d classid=clsid:3050f4e1-98b5-11cf-bb82-00aa00bdce0b></object><script>moveTo(0,-9999);eval(new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(0).Read("&Len(sIniDir)+Len(sFilter)+Len(sTitle)+41&"));function window.onload(){var p=/[^\0]*/;new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).Write(p.exec(d.object.openfiledlg(iniDir,null,filter,title)));close();}</script><hta:application showintaskbar=no />""") 
	oDlg.StdIn.Write "var iniDir='" & sIniDir & "';var filter='" & sFilter & "';var title='" & sTitle & "';" 
	GetFileDlgEx = oDlg.StdOut.ReadAll 
	End Function
	sIniDir = "C:\install.apk" 
	sFilter = "APK files (*.apk)|*.apk|" 
	sTitle = "Choose an APK file to install..." 
	APKFile = GetFileDlgEx(Replace(sIniDir,"\","\\"),sFilter,sTitle) 
	If (Len(APKFile) = 0) Then
    	WScript.Quit
	Else
		FinalAPK = chr(34) & APKFile & chr(34)
		Set objShell = CreateObject("Wscript.Shell")
    	Item = "installAPK.bat " & FinalAPK
    	objShell.Run Item
	End If
End If


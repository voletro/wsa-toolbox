# Installation of Windows Subsystem for Android™ on an unsupported device

1. [Click here](https://store.rg-adguard.net/) to open the website of Online link generator for Microsoft Store by [@rgadguard](https://twitter.com/rgadguard).
2. Enter `9P3395VX91NR` into the input field, selecting "ProductId" from the left dropdown box. Select "Slow" from the right hand dropdown list. Select the "✔" icon to the right of that dropdown list. A list of items should appear below after a few seconds of waiting.
![Screenshot 1](https://i.imgur.com/8x6oF4o.png)
3. Scroll down to the bottom of the page to see the last item in the table. The size of that item should be around 1GB, with the file extension of `.msixbundle`. Click on it to start the download process. (If the download does not start after clicking, try right clicking and selecting "Open link in new window")
![Screenshot 2](https://i.imgur.com/JT952GE.png)
4. Start PowerShell by Opening Windows Terminal as an Administrator. Right click on the Start button and select Windows Terminal (Admin). Accept any pop ups that appear including any UWP pop-ups.
![Screenshot 3](https://i.imgur.com/j7heKQe.png)
5. Type in the command `Add-AppxPackage -Path ` then right click on the downloaded `.msixbundle` file and select `Copy as path`. Paste that copied path into the Terminal Window.
![Screenshot 4](https://i.imgur.com/RZzoI25.png)
6. Hit enter on the final command, which should include `Add-AppxPackage -Path ` as well as the copied path. An example of this would be `Add-AppxPackage -Path "C:\downloadedfile.Msixbundle"`
7. The Windows Subsystem for Android application will be installed, open it up from the start menu. 
![Screenshot 5](https://i.imgur.com/gZD1OLd.png)
8. Make sure that the `Developer Mode` option is turned on, to allow the WSA Toolbox app to work. You can start up the WSA service that is required for WSA Toolbox by pressing on the `Files` application at the top of the settings menu.
9. You're done! You can now use the WSA Toolbox to install any APK file on your computer. You can find APK's [here](https://apkmirror.com). Or, you can install the Aurora Store using the Toolbox to gain access to the Play Store.
<br/>
<p align="center">
  <a href="https://github.com/voletro/wsa-toolbox">
    <img src="images/icon.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Windows Subsystem for Android™ Toolbox</h3>

  <p align="center">
    An awesome Windows Application to easily install and use the Windows Subsystem For Android™.
    <br/>
    <br/>
  </p>
</p>

![Downloads](https://img.shields.io/github/downloads/voletro/wsa-toolbox/total) ![Contributors](https://img.shields.io/github/contributors/voletro/wsa-toolbox?color=dark-green) ![Forks](https://img.shields.io/github/forks/voletro/wsa-toolbox?style=social) ![Stargazers](https://img.shields.io/github/stars/voletro/wsa-toolbox?style=social) ![Issues](https://img.shields.io/github/issues/voletro/wsa-toolbox) ![License](https://img.shields.io/github/license/voletro/wsa-toolbox) 

## About The Project

![Screenshot](images/screenshot.png)

This project includes tools to install and use the Windows Subsystem For Android™ platform on Windows 11. 
These tools include:

* Installation of any APK file in one click.
* Access to the ADB Shell.
* Installation of Windows Subsystem For Android™ in unsupported regions.
* Installation of the Aurora Store as an alternative to the Google Play Store.
* Installation of a simple app launcher for easy access to other apps.

This tool was inspired by the [Fire Toolbox](https://forum.xda-developers.com/t/windows-tool-fire-toolbox-v24-0.3889604/) application, which was used to gain unintended functionality on Amazon Fire Tablets, easily and safely.

## Built With

This project is built using the [HTA HTML Application](https://docs.microsoft.com/en-us/previous-versions//ms536471(v=vs.85)?redirectedfrom=MSDN) platform developed by Microsoft, as well as the simple scripting language, [VBScript](https://en.wikipedia.org/wiki/VBScript) and the use of batch files. It also uses [ADB](https://source.android.com/setup/build/adb) for connection with the virtual device and [winhttpjs](https://github.com/npocmaka/batch.scripts/blob/master/hybrids/jscript/winhttpjs.bat) for downloading files. It is all packaged up into an EXE file with the help of [The Batchman](https://github.com/jeremyben/thebatchman).

This project also uses a customised version of the [Simple Android Launcher](https://github.com/SimpleMobileTools/Simple-App-Launcher) project by [Simple Mobile Tools](https://github.com/SimpleMobileTools) which provides a launcher for your installed Android applications. The Application name has been changed to Android Apps to work better with the Windows Start Menu. 


## Getting Started

**See the releases tab for the latest versions of this application, available in an EXE file. Simply run the file to start the tool.**

To see how to build this app, read on:

### Installation

1. Clone this repo

```sh
git clone https://github.com/voletro/wsa-toolbox.git
```

2. Run the .hta file inside the folder created.

```sh
mshta.exe wsatoolbox.hta
```

4. Find entire source code for other scripts and batch files in the same folder.

## License

Distributed under the GNU GPLv3 license. See [LICENSE](https://github.com/voletro/wsa-toolbox/blob/main/LICENSE.txt) for more information.

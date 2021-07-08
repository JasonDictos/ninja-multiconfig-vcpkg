set SCRIPTROOT=%~dp0

for /f "usebackq tokens=*" %%i in (`"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere" -prerelease -requires Microsoft.Component.MSBuild -find \**\vcvarsall.bat`) do SET VCVARSPATH=%%i
call "%VCVARSPATH%" x64

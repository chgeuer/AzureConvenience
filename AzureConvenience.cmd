

REM @powershell -NoProfile -ExecutionPolicy unrestricted -Command "((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/chgeuer/AzureConvenience/master/AzureConvenience.cmd', 'AzureConvenience.cmd')" && call AzureConvenience.cmd


REM https://github.com/chgeuer/AzureConvenience
REM RAW: https://raw.githubusercontent.com/chgeuer/AzureConvenience/master/AzureConvenience.cmd

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}" /v "IsInstalled" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}" /v "IsInstalled" /t REG_DWORD /d 0 /f
Rundll32 iesetup.dll, IEHardenLMSettings
Rundll32 iesetup.dll, IEHardenUser
Rundll32 iesetup.dll, IEHardenAdmin
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}" /f /va
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}" /f /va
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "First Home Page" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t REG_SZ /d "about:blank" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "about:blank" /f

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

REM start "" %windir%\system32\inetsrv\InetMgr.exe

chocolatey install sublimetext2
start "" "%SystemDrive%\Program Files\Sublime Text 2\sublime_text.exe"

chocolatey install sysinternals
start "" %SystemDrive%\tools\sysinternals\Dbgview.exe /accepteula
start "" %SystemDrive%\tools\sysinternals\procexp.exe /accepteula
# ping, a.k.a. pause 2000 ms
ping 1.1.1.1 -n 1 -w 2000 >NUL
copy %tmp%\procexp64.exe %windir%\system32
start "" %windir%\system32\procexp64.exe

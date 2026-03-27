@echo off
chcp 65001 >nul
echo กำลังสร้าง Shortcut ไว้ที่หน้า Desktop...

:: สร้างไฟล์ VBScript ชั่วคราวเพื่อทำ Shortcut
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Keawgood Universe.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%

:: ชี้เป้าหมายไปที่ Run.bat
echo oLink.TargetPath = "%~dp0Run.bat" >> %SCRIPT%
echo oLink.WorkingDirectory = "%~dp0" >> %SCRIPT%

:: กำหนดไฟล์ไอคอน (ต้องมีไฟล์ icon.ico อยู่ในโฟลเดอร์เดียวกับสคริปต์นี้)
echo oLink.IconLocation = "%~dp0icon.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

:: รันสคริปต์และลบทิ้ง
cscript /nologo %SCRIPT%
del %SCRIPT%

echo.
echo ===================================================
echo   สร้าง Shortcut บน Desktop พร้อมไอคอนสำเร็จ!
echo ===================================================
pause
@echo off

:: BatchGotAdmin
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

mode con: cols=70 lines=35

TITLE Windows License Keys: v1.0.0
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo               !! Windows License Keys for your computer !!
echo.
echo          This script was made by xqwtxon, Make sure checkout 
echo             his github can be found in github.com/xqwtxon. 
echo               Go and checkout his codes for more useful
echo         projects on your software! Enjoy your licensed windows!
echo.
echo.	Github: https://github.com/xqwtxon/wlk
echo.	Website: https://xqwtxon.ml/
echo.
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
curl -sL https://raw.githubusercontent.com/xqwtxon/wlk/main/LICENSE --retry 10 --retry-delay 5
if %errorlevel%==1 goto error
echo.
choice /C YN /N /M "Do you want to accept our license [Y/N]? "
echo.
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
if %errorlevel%==1 goto start
if %errorlevel%==2 goto cancel
:start
echo.
echo Starting activating your Windows...
cscript //nologo slmgr.vbs /ckms >nul
cscript //nologo slmgr.vbs /upk >nul
cscript //nologo slmgr.vbs /cpky >nul
for /F "usebackq delims=" %%a in (`curl -sL https://raw.githubusercontent.com/xqwtxon/wlk/main/keys.txt --retry`) do (
  cscript //nologo "C:\Windows\System32\slmgr.vbs" /ipk %%a
)
if %errorlevel%==1 goto select_server
if %errorlevel%==0 goto done

:select_server
echo.
echo Select a server do you want to set.
echo.
echo (1) kms1.MSGuides.com 
echo (2) kms2.MSGuides.com
echo (3) kms3.MSGuides.com 
echo (4) kms4.MSGuides.com 
echo (5) kms5.MSGuides.com 
echo (6) kms6.MSGuides.com 
echo (7) kms7.MSGuides.com 
echo (8) kms8.MSGuides.com 
echo (9) kms9.MSGuides.com 
echo (0) Cancel
echo.
choice /n /c 1234567890 /m "Choose one: "
if %errorlevel%==1 set i=1
if %errorlevel%==2 set i=2
if %errorlevel%==3 set i=3
if %errorlevel%==4 set i=4
if %errorlevel%==5 set i=5
if %errorlevel%==6 set i=6
if %errorlevel%==7 set i=7
if %errorlevel%==8 set i=8
if %errorlevel%==9 set i=9
if %errorlevel%==10 set i=0
goto server

:server 
if %i%==1 set KMS=kms1.MSGuides.com 
if %i%==2 set KMS=kms2.MSGuides.com 
if %i%==3 set KMS=kms3.MSGuides.com 
if %i%==4 set KMS=kms4.MSGuides.com 
if %i%==5 set KMS=kms5.MSGuides.com 
if %i%==6 set KMS=kms6.MSGuides.com 
if %i%==7 set KMS=kms7.MSGuides.com 
if %i%==8 set KMS=kms8.MSGuides.com 
if %i%==9 set KMS=kms9.MSGuides.com 
if %i%==0 goto cancel
cscript //nologo slmgr.vbs /skms %KMS%:1688 >nul
if %errorlevel%==1 goto error
goto done

:error
echo.
echo An error occured while activating your windows ...
echo Contact our support team for further more assistance ...
echo.
choice /n /c YN /m "Would you like to report this issue? [Y,N]? "
if errorlevel 1 goto report_issue
if errorlevel 2 goto cancel

:done
echo.
echo Your windows is now activated ...
echo Please reboot or restart your computer to take effect ...
echo.
timeout /T 10 /NOBREAK>nul

:report_issue
echo Opening github issues on the browser ...
start https://github.com/xqwtxon/wlk/issues
timeout /T 10 /NOBREAK>nul
goto cancel

:cancel
echo.
echo Cancelling wlk.bat ...
timeout /T 10 /NOBREAK>nul
exit 1

@echo off

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
cscript //nologo slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
cscript //nologo slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul
cscript //nologo slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9 >nul
cscript //nologo slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ >nul
cscript //nologo slmgr.vbs /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ >nul
cscript //nologo slmgr.vbs /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639 >nul
cscript //nologo slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul
cscript //nologo slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul
cscript //nologo slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul
cscript //nologo slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul
cscript //nologo slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul
cscript //nologo slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul
cscript //nologo slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
cscript //nologo slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul
cscript //nologo slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
cscript //nologo slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul
cscript //nologo slmgr.vbs /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J >nul
cscript //nologo slmgr.vbs /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF >nul
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

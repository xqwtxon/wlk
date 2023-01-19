@echo off

TITLE WINDOWS LICENSE KEYS WORKING FOR FREE!!! (version 1.0.0)

echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo                *Windows License Keys Working for FREE!*
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
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
type LICENSE
echo.
echo.
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
choice /n /c YN /m "Do you agree with our license? [Y,N]? "
echo.
IF errorlevel 1 (
	goto start
) else (
	echo You must accept first our license to continue using this software.
	goto end_process
)

:start
echo Starting activating your Windows...
cscript //nologo slmgr.vbs /ckms >nul
cscript //nologo slmgr.vbs /upk >nul
cscript //nologo slmgr.vbs /cpky >nul
set i=1&wmic os | findstr /I "enterprise" >nul 
if %errorlevel% EQU 0 (
	cscript //nologo slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
	cscript //nologo slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul
	cscript //nologo slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9 >nul
	cscript //nologo slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ >nul
	cscript //nologo slmgr.vbs /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ >nul
	cscript //nologo slmgr.vbs /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639 >nul
	goto server
) else (
	wmic os | findstr /I "home" >nul 
	if %errorlevel% EQU 0 (
		cscript //nologo slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul
		cscript //nologo slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul
		cscript //nologo slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul
		cscript //nologo slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul
		goto server
	) else (
		wmic os | findstr /I "education" >nul 
		if %errorlevel% EQU 0 (
		cscript //nologo slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul
		cscript //nologo slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul
		goto server
		) else ( 
			wmic os | findstr /I "10 pro" >nul 
			if %errorlevel% EQU 0 (
				cscript //nologo slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
				cscript //nologo slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul
				goto server
				wmic os | findstr /I "11 pro" >nul 
				if %errorlevel% EQU 0 (
				cscript //nologo slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
				cscript //nologo slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul
				cscript //nologo slmgr.vbs /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J >nul
				cscript //nologo slmgr.vbs /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF >nul
				)
			) else (
				goto notsupported
			)
		)
	)
) 
:server 
if %i%==1 set KMS=kms7.MSGuides.com 
if %i%==2 set KMS=kms8.MSGuides.com 
if %i%==3 set KMS=kms9.MSGuides.com 
if %i%==4 goto notsupported 
cscript //nologo slmgr.vbs /skms %KMS%:1688 >nul

:notsupported
echo.
echo Your current windows version is not supported yet.
echo Contact our support team for further assistance.
echo.
choice /n /c YN /m "Would you like to report this issue? [Y,N]? "
if errorlevel 2 goto end_process
if errorlevel 1 goto report_issue

:report_issue
start https://github.com/xqwtxon/wlk/issues

:end_process
echo.
pause>nul|(echo ++++++++++++++++++++++++++ PROCESS ENDED ++++++++++++++++++++++++++++)
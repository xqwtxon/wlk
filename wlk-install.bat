@echo off

mode con: cols=70 lines=35

TITLE Windows License Keys Installation: v1.0.0

echo      +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo             Welcome to Windows License Keys Installation        
echo        This will install latest wlk version to your computer.  
echo.
echo      +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
choice /C YN /N /M "Do you want to install this program to your computer [Y/N]? "
if %errorlevel%==1 goto license
if %errorlevel%==2 goto cancel


:license
echo.
echo 			      LICENSE
echo.
curl -sL https://raw.githubusercontent.com/xqwtxon/wlk/main/LICENSE --retry 10 --retry-delay 5
if %errorlevel%==1 goto error
echo.
echo.
choice /C YN /N /M "Do you accept the installation license [Y/N]? "
if %errorlevel%==1 goto install
if %errorlevel%==2 goto cancel

:install
echo.
echo Downloading wlk.bat ...
curl -sL https://raw.githubusercontent.com/xqwtxon/wlk/main/wlk.bat -o "wlk.bat" --retry 10 --retry-delay 5
if %errorlevel%==1 goto error
echo Downloaded wlk.bat ...
goto complete

:complete
echo.
echo The wlk.bat installation is now completed and successfull ...
echo.
choice /C YN /N /M "Do you want to launch now [Y/N]? "
if %errorlevel%==1 goto launch
if %errorlevel%==2 goto cancel

:launch
echo.
echo Launching wlk.bat ...
timeout /T 10 /NOBREAK>nul
start wlk.bat
exit 1

:report
echo.
echo Opening github issues on the browser ...
start https://github.com/xqwtxon/wlk/issues
timeout /T 10 /NOBREAK>nul

:cancel
echo.
echo Cancelling Installation ...
timeout /T 10 /NOBREAK>nul

:error
echo.
echo AN ERROR OCCUR WHILE INSTALLING THE wlk.bat TO YOUR COMPUTER.
echo.
choice /C YN /N /M "Do you want report this issue on github [Y/N]? "
if %errorlevel%==1 goto report
if %errorlevel%==2 goto cancel

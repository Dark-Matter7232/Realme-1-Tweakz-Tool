@title Tweaks Tool For Realme 1
@echo off
adb\adb.exe start-server
:OP0
cls
color 0e
echo.
echo  //////--------//////-------//////
echo     Menu of Tweaks By AnuragRai 
echo  --------------------------------------------------------------------------------------------------------------
echo  To use this, Type the number of the option, and press the enter key. 
echo --------------------------------------------------------------------------------------------------------------
echo  1: Remove Preloaded apps.
echo  2: Install Stock Google And Light Apps 
echo  3: Reboot the Realme 1 "Do This After Step 1 and 2".
echo  4: Remove Stock Launcher 
echo --------------------------------------------------------------------------------------------------------------
set Choice=
set /p Choice=""

if '%Choice%'=='1' goto OP1
if '%Choice%'=='2' goto OP2
if '%Choice%'=='3' goto OP3
if '%Choice%'=='4' goto OP4
	

:OP1
cls
echo ---------------------------------------------------------------------------------------------------------------
echo This will remove every Bloatware app exept for core apps and Settings And After This Step Use option 2 and 3
echo Press any key to continu.
echo ---------------------------------------------------------------------------------------------------------------
pause >nul
echo [*-*] Waiting for Device.
adb\adb.exe wait-for-device
adb\adb.exe uninstall -k --user 0 com.google.android.youtube
adb\adb.exe uninstall -k --user 0 com.android.browser
adb\adb.exe uninstall -k --user 0 com.coloros.cloud
adb\adb.exe uninstall -k --user 0 com.google.android.youtube
adb\adb.exe uninstall -k --user 0 com.google.android.music
adb\adb.exe uninstall -k --user 0 com.google.android.videos
adb\adb.exe uninstall -k --user 0 com.google.android.apps.photos
adb\adb.exe uninstall -k --user 0 com.google.android.talk
adb\adb.exe uninstall -k --user 0 com.google.android.apps.maps
adb\adb.exe uninstall -k --user 0 com.google.android.apps.docs
adb\adb.exe uninstall -k --user 0 com.google.android.apps.tachyon
adb\adb.exe uninstall -k --user 0 com.oppo.market
adb\adb.exe uninstall -k --user 0 com.coloros.oshare
adb\adb.exe uninstall -k --user 0 com.emoji.keyboard.touchpal
adb\adb.exe uninstall -k --user 0 com.android.chrome
adb\adb.exe uninstall -k --user 0 com.coolpad.music
adb\adb.exe uninstall -k --user 0 com.mediatek.mtklogger
echo Done! Press any key to continue.
pause >nul
start Tweakz-Tool.bat
exit

:OP2
echo.--------------------------------------------------------------------------------------
echo This Will Install Lght Apps Instead Of those Ram Consuming ColorOS Apps.
echo Press any key to continue.
echo.--------------------------------------------------------------------------------------
pause >nul
echo [*-*] Waiting for Device
adb\adb.exe wait-for-device
echo [*-*] Installing Youtube Vanced app 1 of 6
adb\adb.exe install apps/YoutubeVanced.apk
echo [*-*] Installing MicroG For YT Vanced app 2 of 6
adb\adb.exe install apps/MicroG.apk
echo [*-*] Installing POCO Launcher app 3 of 6
adb\adb.exe install apps/POCO.apk
echo [*-*] Installing POCO Icon Pack 4 of 6
adb\adb.exe install apps/ICON.apk
echo [*-*] Installing Moded Download Manager app 5 of 6
adb\adb.exe install apps/ADM.apk
echo [*-*] Installing Via Browser 6 of 6
adb\adb.exe install apps/VIA.APK
echo [*-*] Done! Press any key to continue.
pause >nul
start Tweakz-Tool.bat
exit

:OP3
echo [*-*] Waiting for Devce.
adb\adb.exe wait-for-device
adb\adb.exe reboot Device
start Tweakz-Tool.bat
exit

:OP4
echo Removing  Oppo Launcher(Make Surre That You Have Installed Another Launcher)
echo [*-*] Waiting for Device.
adb\adb.exe wait-for-device
adb\adb.exe uninstall -k --user 0 com.oppo.Launcher
start Tweakz-Tool.bat
exit


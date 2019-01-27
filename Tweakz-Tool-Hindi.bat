@title Tweaks Tool For Realme 1
@echo off
adb\adb.exe start-server
:OP0
cls
color 0e
echo.
echo    //////--------//////-------//////
echo     अनुरागराई द्वारा Tweaks का मेनू 
echo --------------------------------------------------------------------------------------------------------------
echo  इसका उपयोग करने के लिए, विकल्प का नंबर टाइप करें, और एंटर की दबाएं। 
echo --------------------------------------------------------------------------------------------------------------
echo  1: पहले से लोड किए गए ऐप्स निकालें।
echo  2: स्टॉक Google और लाइट ऐप्स इंस्टॉल करें 
echo  3: Realme 1 को रीबूट करें "स्टेप 1 और 2 के बाद ऐसा करें"।
echo  4: स्टॉक लॉन्चर हटाएं। 
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
echo यह सभी ओप्पो ब्लोटवेयर को हटा देगा (इसके बाद विकल्प 2 और 3 का उपयोग करें)
echo जारी रखने के लिए किसी भी कुंजी को दबाएं।
echo ---------------------------------------------------------------------------------------------------------------
pause >nul
echo [*-*] उपकरण की प्रतीक्षा।
adb\adb.exe wait-for-device
adb\adb.exe uninstall -k --user 0 com.google.android.youtube
adb\adb.exe uninstall -k --user 0 com.android.browser
adb\adb.exe uninstall -k --user 0 com.coloros.cloud
adb\adb.exe uninstall -k --user 0 com.google.android.music
adb\adb.exe uninstall -k --user 0 com.google.android.videos
adb\adb.exe uninstall -k --user 0 com.google.android.apps.photos
adb\adb.exe uninstall -k --user 0 com.google.android.apps.maps
adb\adb.exe uninstall -k --user 0 com.google.android.apps.docs
adb\adb.exe uninstall -k --user 0 com.google.android.apps.tachyon
adb\adb.exe uninstall -k --user 0 com.oppo.market
adb\adb.exe uninstall -k --user 0 com.coloros.oshare
adb\adb.exe uninstall -k --user 0 com.emoji.keyboard.touchpal
adb\adb.exe uninstall -k --user 0 com.cootek.s
adb\adb.exe uninstall -k --user 0 com.android.chrome
adb\adb.exe uninstall -k --user 0 com.mediatek.mtklogger
echo काम पूरा हो गया है, अब किसी भी कुंजी को दबाएं
pause >nul
start Tweakz-Tool-Hindi.bat
exit

:OP2
echo.--------------------------------------------------------------------------------------
echo यह उन राम उपभोक्ता ColorOS Apps के बजाय लाइट ऐप इंस्टॉल करेगा।
echo जारी रखने के लिए किसी भी कुंजी को दबाएं।
echo.--------------------------------------------------------------------------------------
pause >nul
echo [*-*] उपकरण की प्रतीक्षा।
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
echo [*-*] काम पूरा हो गया है, अब किसी भी कुंजी को दबाएं
pause >nul
start Tweakz-Tool-Hindi.bat
exit

:OP3
echo [*-*] उपकरण की प्रतीक्षा।
adb\adb.exe wait-for-device
adb\adb.exe reboot Device
start Tweakz-Tool-Hindi.bat
exit

:OP4
echo ओप्पो लॉन्चर को हटाया जा रहा है (यह सुनिश्चित करें कि आपने दूसरा लॉन्चर इंस्टॉल किया है)
echo [*-*] उपकरण की प्रतीक्षा।
adb\adb.exe wait-for-device
adb\adb.exe uninstall -k --user 0 com.oppo.Launcher
start Tweakz-Tool-Hindi.bat
exit


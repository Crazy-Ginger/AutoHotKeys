REM %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup

for %%f in (.\src\*) do mklink "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%%~nf.ahk" "src\%%~nf.ahk" 
REM %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup

for %%f in (.\src\*) do (
    del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%%~nf.ahk"
    mklink /h "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%%~nf.ahk" "src\%%~nf.ahk"
    "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%%~nf.ahk"
)

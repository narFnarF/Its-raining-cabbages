@echo off
echo Push PC build to itch.io

title Push PC build to itch.io

::PARAMETERS TO SET
set dossier="C:\Users\narF\Desktop\It's Raining Cabbages"
set butler="%appdata%\itch\bin\butler.exe"



::rename nw.exe to cabbages.exe
pushd %dossier%\win32
if %ERRORLEVEL% EQU 1 GOTO error_dossierWin32NotFound
rename nw.exe cabbages.exe
if %ERRORLEVEL% EQU 1 GOTO error_nwNotFound
popd


::butler push all versions
%butler% push --userversion-file="versionNb-pc.txt" %dossier%\win32 narf/its-raining-cabbages:windows

%butler% push --userversion-file="versionNb-pc.txt" %dossier%\osx64 narf/its-raining-cabbages:mac-osx

%butler% push --userversion-file="versionNb-pc.txt" %dossier%\linux32 narf/its-raining-cabbages:linux32

%butler% push --userversion-file="versionNb-pc.txt" %dossier%\linux64 narf/its-raining-cabbages:linux64

::display status
%butler% status narf/its-raining-cabbages



goto end_pause




:error_nwNotFound
echo Error: nw.exe was not found
goto end_pause

:error_dossierWin32NotFound
echo Error: %dossier%\win32 doesn't exist.
goto end_pause


:end_pause
pause

:end_noPause
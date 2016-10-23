echo "Ce script ne fonctionne pas encore!"

pause

exit

set dossier="C:\Users\narF\Desktop\It's Raining Cabbages"

set current=%cd%
echo %current%

:: set /p version=Numero de version? (avec un 'v' devant): 


cd %dossier%\win32
rename nw.exe cabbages.exe
cd ..

copy %appdata%\itch\bin\butler.exe .

butler push --userversion-file="%current%\version-pc.txt" win32 narf/its-raining-cabbages:windows

butler push --userversion-file="%current%\version-pc.txt" osx64 narf/its-raining-cabbages:mac-osx

butler push --userversion-file="%current%\version-pc.txt" linux32 narf/its-raining-cabbages:linux32

butler push --userversion-file="%current%\version-pc.txt" linux64 narf/its-raining-cabbages:linux64

butler status narf/its-raining-cabbages

pause
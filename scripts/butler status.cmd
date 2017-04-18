@echo off

set butler="%appdata%\itch\bin\butler.exe"
set projectNameItchIO=its-raining-cabbages

echo Itch.io status %projectNameItchIO%
%butler% status narf/%projectNameItchIO%

pause
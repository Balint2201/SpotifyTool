@echo off
color 4
title SpotifyTool by Balint2201
echo What theme do you wanna use? (O for old or N for new)

set/p "cho=>"
if %cho%==n goto New
if %cho%==N goto New
if %cho%==o goto Old
if %cho%==O goto Old

color 4
echo Invaild choice! Try again!
pause

exit /b

:New

%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "&{[Net.ServicePointManager]::SecurityProtocol = 3072}; """"& { $(Invoke-WebRequest -UseBasicParsing 'https://spotx-official.github.io/run.ps1')} -new_theme """" | Invoke-Expression"

goto Step2

:Old

%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "&{[Net.ServicePointManager]::SecurityProtocol = 3072}; """"& { $(Invoke-WebRequest -UseBasicParsing 'https://spotx-official.github.io/run.ps1')} -v 1.2.13.661.ga588f749-4064 -confirm_spoti_recomended_over -block_update_on """" | Invoke-Expression"

goto Step2


:Step2
color a
cls
echo 1 of 2 steps is done.
pause
color f

%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex"
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1 | iex"
color a
cls
echo 2/2 done. Everything is ready for you. Recommended to restart your pc/laptop.
echo (Downloaded apps: SpotX and Spicetify)
echo Download tool made by Balint2201.
echo.
echo AD: Ha magyar vagy ne felejts el csatlakozni a Minecraft kozzosegunkoz: https://gg.gg/minearea
pause
exit /b
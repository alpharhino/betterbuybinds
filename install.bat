@echo off
SET GAMEDIR="C:\Program Files (x86)\steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\"
SET AUTOEXECFILE=autoexec.cfg
echo %AUTOEXECFILE%
if exist %GAMEDIR% echo folder exists
echo WARNING, THIS WILL OVERWRITE YOUR AUTOEXEC CONFIG IN
echo %GAMEDIR%
SET /P AREYOUSURE=Are you sure (Y/[N])? 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
copy %AUTOEXECFILE% %GAMEDIR% /Y
pause

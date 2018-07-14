@ECHO off
setlocal EnableDelayedExpansion
SET GAMEDIR="C:\Program Files (x86)\steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\"
SET AUTOEXECFILE=autoexec.cfg
IF NOT EXIST %GAMEDIR% (
    ECHO ERROR %GAMEDIR% does not exist! 
	ECHO Autoexec will not be installed.
	ECHO Exiting...
	GOTO ERROREXIT
) ELSE (
    echo WARNING: THIS WILL OVERWRITE YOUR AUTOEXEC CONFIG IN
	echo %GAMEDIR%
	SET /P AREYOUSURE=Are you sure (Y/[N]^)^? 
	IF /I "!AREYOUSURE!" NEQ "Y" GOTO QUIT
	copy %AUTOEXECFILE% %GAMEDIR% /Y
	pause
)

:ERROREXIT
EXIT /B 1

:QUIT
EXIT /B 0
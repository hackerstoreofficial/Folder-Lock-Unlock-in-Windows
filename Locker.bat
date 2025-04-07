:: Folder Locker Script
:: This script creates a folder named "Locker" and allows the user to lock or unlock it with a password.
:: The folder is hidden when locked and visible when unlocked.

cls
@ECHO OFF
title Folder Locker

:: Check if folder exists
if NOT EXIST "Locker" (
    goto CREATE
)

:: Check if the folder is hidden (locked)
attrib Locker | find "H" > nul
if %ERRORLEVEL%==0 (
    goto UNLOCK
) else (
    goto LOCK
)

: CREATE
md Locker
echo Locker folder created.
goto End

: LOCK
attrib +h +s Locker
echo Folder Locked.
goto End

: UNLOCK
echo Enter Password to Unlock Folder:
set /p "pass=>"
if NOT %pass%==YOUR_PASSWORD_HERE goto FAIL
attrib -h -s Locker
echo Folder Unlocked.
goto End

: FAIL
echo Wrong password!
goto End
 
:End
pause

:: Code contributed by Hacker Store Official

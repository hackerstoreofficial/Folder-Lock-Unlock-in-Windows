# Folder Lock & Unlock in Windows

A simple batch script to create, lock (hide), and unlock a folder on Windows 10/11 to protect it from unauthorized access.

> **⚠️ Disclaimer:** This method uses a "fake lock" mechanism (hiding the folder and renaming it to a system class ID). It is **not true encryption** and can be bypassed by users with knowledge of batch scripts or by enabling "Show hidden files". Do not use this for highly sensitive data.

## Features
* **Auto-Create Locker:** Automatically creates a folder named `Locker` if it doesn't exist.
* **Lock Folder:** Hides the folder and locks it with a password.
* **Unlock Folder:** Restores access to the folder using your password.

## Usage

### Option 1: Use the Existing File
1.  Download or clone this repository.
2.  Right-click `Locker.bat` and select **Edit** (or Open with Notepad).
3.  Find the line `if NOT %pass%==YOUR_PASSWORD_HERE goto FAIL`.
4.  Replace `YOUR_PASSWORD_HERE` with your desired password.
5.  Save the file.

### Option 2: Create the Script Manually
1.  Open **Notepad**.
2.  Copy the code block below and paste it into Notepad.
3.  Change `YOUR_PASSWORD_HERE` to your desired password.
4.  Go to **File > Save As**.
5.  Name the file `Locker.bat` and select **All Files** in the "Save as type" dropdown.

### The Script Code

```bat
cls
@ECHO OFF
title Folder Locker
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER

:CONFIRM
echo Are you sure you want to Lock the folder(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM

:LOCK
ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End

:UNLOCK
echo Enter password to Unlock folder
set/p "pass=>"
if NOT %pass%==YOUR_PASSWORD_HERE goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo Folder Unlocked successfully
goto End

:FAIL
echo Invalid password
goto end

:MDLOCKER
md Locker
echo Locker created successfully
goto End

:End
```

## How to Use

1. Double-click `Locker.bat` . It will create a folder named `Locker`.

2. Move your files into the `Locker` folder.

3. Double-click `Locker.bat` again. Type `Y` to lock the folder. The folder will disappear.

4. To unlock, double-click `Locker.bat` and enter your password.

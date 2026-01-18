# 🔐 Folder Lock & Unlock in Windows

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Windows-blue)](https://www.microsoft.com/windows)
[![Script](https://img.shields.io/badge/Language-Batch-green)]()

A lightweight, portable Batch script to lock (hide) and unlock folders on Windows without installing any third-party software.

> **⚠️ Important Disclaimer:** This tool uses a system trick (renaming to a CLSID) to hide the folder. It provides **basic privacy** against casual snooping but **does not encrypt** your files. A tech-savvy user can still access the files if they know where to look. Do not use this for highly sensitive data like banking details.

## ✨ Key Features
* **No Installation Required:** Works directly on any Windows PC.
* **Password Protection:** Simple text-based password system.
* **Stealth Mode:** Completely hides the folder from standard Windows Explorer views.
* **Fast & Lightweight:** Zero background processes or memory usage.

## 🛠️ How to Use

### 1. Download & Setup
1.  **Clone** this repository or **Download** the `Locker.bat` file.
    ```bash
    git clone https://github.com/hackerstoreofficial/Folder-Lock-Unlock-in-Windows.git
    ```
2.  Place the `Locker.bat` file in the directory where you want your locked folder to exist.

### 2. Set Your Password
1.  Right-click `Locker.bat` and select **Edit** (or Open with Notepad).
2.  Find the line that says:
    ```bat
    if NOT %pass%==YOUR_PASSWORD_HERE goto FAIL
    ```
3.  Replace `YOUR_PASSWORD_HERE` with your desired password.
4.  **Save** the file (`Ctrl + S`).

### 3. Locking & Unlocking
1.  **Create Locker:** Double-click `Locker.bat`. A new folder named `Locker` will appear.
2.  **Add Files:** Move your private files into the `Locker` folder.
3.  **Lock:** Double-click `Locker.bat` again. Type `Y` and press Enter. The folder will vanish.
4.  **Unlock:** Double-click `Locker.bat`. Enter your password to reveal the folder.

## 📝 The Script
If you prefer to create the file manually, copy the code below into a new text file and save it as `Locker.bat`.

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

## ❓ Troubleshooting

Forgot Password? Since this is a script, you can right-click the `.bat` file and choose "Edit" to see or change the password.

Folder Not Hiding? Ensure "Show hidden files" is disabled in your Windows Explorer View settings.

## 📜 License
This project is licensed under the MIT License. Free to use and modify.

---
*Developed with ❤️ by [hackerstoreofficial](https://github.com/hackerstoreofficial)*

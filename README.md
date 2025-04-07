# Folder-Lock-Unlock-in-Windows
Locking a folder on Windows 10 to protect it from unauthorized access

**Use a Batch Script to "Fake-Lock" a Folder**
This method uses a hidden folder trick and a batch file. It’s more like hiding and password-protecting through scripting

**Steps:**
1. Open Notepad and paste this script {given as file named (Locker.bat)}
2. Replace YOUR_PASSWORD_HERE with your actual password.
3. Save it as Locker.bat.
4. Double-click Locker.bat to create and lock/unlock the folder.

🔐 How it Works Now:
- If "Locker" doesn't exist, it creates it.
- If it exists and is hidden, it prompts to unlock with a password.
- If it exists and is not hidden, it locks it again (no password needed to re-lock).
 
⚠️ This is not secure against tech-savvy users or those with access to the batch file.

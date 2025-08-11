# Folder-Lock-Unlock-in-Windows
Locking a folder on Windows 10 to protect it from unauthorized access

**Use a Batch Script to "Fake-Lock" a Folder**
This method uses a hidden folder trick and a batch file. It’s more like hiding and password-protecting through scripting

**Steps:**
📋 Step 1 – Open Notepad
1.1 Press Windows + S and type Notepad.
1.2 Click Notepad to open it.

💻 Step 2 – Copy the Toggle Lock Script (which is in the Locker.bat file)
2.1 Paste the code into Notepad (which is in the Locker.bat file)
2.2 Replace YOUR_PASSWORD_HERE with your actual password.

💾 Step 3 – Save as a Batch File
3.1 Go to File > Save As.
3.2 In the File name, type: Locker.bat
3.3 In Save as type, select All Files.
3.4 Save it somewhere safe (like your Documents folder).

📂 Step 4 – Create and Lock the Folder
4.1 Double-click Locker.bat.
4.2 The first run will create a folder named Locker.
4.3 Put any files you want to protect inside the Locker folder.
4.4 Double-click Locker.bat again — it will lock (hide) the folder.

🔓 Step 5 – Unlock the Folder
5.1 Double-click Locker.bat.
5.2 It will ask for your password.
5.3 If correct, it will show the folder again.

⚠️ This is not secure against tech-savvy users or those with access to the batch file.
⚠️ This is a basic lock. Anyone who knows how batch files work can open it and see the password.

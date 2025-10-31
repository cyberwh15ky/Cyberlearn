### Virtual machine 强制 install windows 11  
Keyboard: Shift+F10  
> Command: REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassTPMCheck /t REG_DWORD /d 1  


# Windows 11 離線強制，無需建立Microsoft Account:  
Keyboard: Shift + F10  
> Command:oobe\bypassnro  
<img width="917" height="630" alt="image" src="https://github.com/user-attachments/assets/e88f2bfe-097a-40ec-a056-f4b38821c88e" />  
<img width="919" height="682" alt="image" src="https://github.com/user-attachments/assets/4b69b9b3-484b-4a20-a2e7-973d16466ba7" />  


### Set-up local user  (非必要)
> Command: net user "username" "password" /add  
> Command: net localgroup administrators "username" /add  
> Command: net user username password  


https://adersaytech.com/kb-article/bypass-win11-oobe-login-requirement.html

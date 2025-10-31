### Virtual machine 强制 install windows 11
> Keyboard: Shift+F10 
> Command: REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassTPMCheck /t REG_DWORD /d 1


# Windows 11 離線強制，無需建立Microsoft Account:  
<img width="933" height="688" alt="image" src="https://github.com/user-attachments/assets/47686c72-a858-4584-acc3-fb2859a58f40" />

> Keyboard: Shift + F10  
> Command:oobe\bypassnro
<img width="917" height="630" alt="image" src="https://github.com/user-attachments/assets/e88f2bfe-097a-40ec-a056-f4b38821c88e" />


### Set-up local user  

> Command: net user "username" "password" /add  
> Command: net localgroup administrators "username" /add  
> Command: net user username password  


https://adersaytech.com/kb-article/bypass-win11-oobe-login-requirement.html

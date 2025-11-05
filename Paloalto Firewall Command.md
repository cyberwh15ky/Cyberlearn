Verifying IP Address Configurations  
> admin@PA-VM> show interface management  
<img width="867" height="765" alt="image" src="https://github.com/user-attachments/assets/1d0dc362-a235-42a5-93bb-935b244c8892" />  

Check Firewall information  
> admin@PA-VM> show system info  
<img width="1039" height="765" alt="image" src="https://github.com/user-attachments/assets/3f1a7d7f-b78c-440b-9050-37db44ef67ea" />
<img width="964" height="753" alt="image" src="https://github.com/user-attachments/assets/dfe7c023-8482-4557-9c87-203a399a6a75" />  

Check Firewall all interface  
> admin@PA-VM> show interface all  
<img width="1121" height="355" alt="image" src="https://github.com/user-attachments/assets/bd7ebe7b-d9bb-4998-894c-25b063cfd8c6" />   

Change to configuration mode for setup PA-VM  
> admin@PA-VM> configure  
<img width="869" height="121" alt="image" src="https://github.com/user-attachments/assets/8a09c041-f57f-4e5d-9c39-85726617696b" />  

> admin@PA-VM# set deviceconfig system type static  
<img width="1065" height="62" alt="image" src="https://github.com/user-attachments/assets/72a727d9-13b4-43d7-9689-1320847d2bb4" />  

> admin@PA-VM# set deviceconfig system ip-address 10.1.129.41 netmask 255.255.255.0 default-gateway 10.1.129.254 dns-setting servers primary 8.8.8.8  
<img width="1081" height="87" alt="image" src="https://github.com/user-attachments/assets/f963dd17-d5a7-438a-b506-cfad4a06d602" />  

> admin@PA-VM# commit  
<img width="1072" height="193" alt="image" src="https://github.com/user-attachments/assets/c89716f7-bc31-4a8f-8668-43938e4fbd30" />  

Exit Configuration mode  
> admin@PA-VM# exit  
<img width="874" height="68" alt="image" src="https://github.com/user-attachments/assets/2a997f1b-e59f-411e-b5f2-deb1cbf90d43" />  

Check the management interface info  
> admin@PA-Vm> show interface management  
<img width="861" height="716" alt="image" src="https://github.com/user-attachments/assets/80d2c5e2-0fe8-4b00-b4bf-f6b1411e3d7f" />  

Access PA in the browser  
> admin  
> P@ssw0rd  
<img width="1501" height="883" alt="image" src="https://github.com/user-attachments/assets/5b7ecf72-d3e9-4caf-9c25-d14e7722992a" />  
<img width="1911" height="933" alt="image" src="https://github.com/user-attachments/assets/a75b6fed-80b0-425b-8850-712bd1ece55f" />  



## Monitor  
Logs > Traffic  
<img width="1109" height="481" alt="image" src="https://github.com/user-attachments/assets/fc080384-daf1-4c32-9e43-ee80c8a265cc" />  
TYPE:  
- end 表示 session 結束，會包含統計資訊（bytes、packets、原因）  
- start 表示一個新的 session 建立  
- deny 流量被安全規則拒絕  

ACTION:  
- allow  表示流量符合安全規則 (Security Policy) 並被允許。
- reset-both 防火牆同時向 client 與 server 發送 TCP Reset (RST) 封包。 這會立即終止雙方的 TCP session，避免進一步的資料交換。  



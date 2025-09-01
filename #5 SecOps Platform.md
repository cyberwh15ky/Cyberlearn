<img width="1396" height="719" alt="image" src="https://github.com/user-attachments/assets/1261b3c7-4b65-442e-966d-6563ce164d63" />## SecOps Platform  
https://drive.google.com/file/d/15eBgU0Meq_a5Cf-RNiEcA-nrVbiu0rCi/view?usp=sharing  
### ULTIMATE TEST DRIVE  

#### Table of Contents  

**Purpose of This Workshop Guide**  
**Activity 0: Log in to the UTD Workshop**  
Task 1 - Log in to Your Ultimate Test Drive Class Environment  
Task 2 - Understand UTD Components  
Task 3 - Application Portal Overview  
Task 4 - Enable Internet Access on the ML-Powered Next-Generation Firewall  

**Activity 1: Overview of the Cortex Product Family**  
Task 1 - Introduction to Palo Alto Networks Cortex product family  
Task 2 - Cortex XDR Overview  
Task 3 - Cortex XSOAR Overview  
Task 4 - Cortex XSIAM Overview  
Task 5 - Cortex Copilot in XSIAM  

**Activity 2: Cortex XDR - Phishing Case Study**  
Task 1 - Install XDR Agent on Windows and Linux Clients  
Task 2 - Review Cortex XDR Policies  
Task 3 - BrowserBreach: Chrome Vulnerability Triggered by Phishing Email  

**Activity 3: Cortex XDR - Remote Code Exploit Case Study**  
Task 1 - ActivePwn: Windows Remote Code Exploit  
Task 2 - Windows Privilege Escalation and Post Exploitation  
Task 3 - CodeInject: Linux Spring Framework Exploit  

**Activity 4: Cortex XSOAR Phishing Email Case Study**  
Task 1 - Review the Setup  
Task 2 - Report Phishing Email and see Cortex XSOAR in action  
Task 3 - Investigate a Phishing Incident in XSOAR - I  
Task 4 - Investigate a Phishing Incident in XSOAR - II  

**Activity 5 - Introduction to Cortex XSIAM**  
Task 1 - Cortex XSIAM Command Center  
Task 2 - Incident Response  
Task 3 - XSIAM Detection Rules and Attack Surface Management      

**Activity 6: Cortex XSIAM - Data Exfiltration Case Study**  
Task 1 - Introduction - Incident Overview  
Task 2 - Investigate Attackers reconnaissance activity  
Task 3 - Investigate Credential Harvesting  
Task 4 - Investigate Lateral Movement and DNS Tunneling  

**Activity 7: Better Together - Cortex XSOAR and Strata NGFW EDL Integration**  
Task 1 - Add a Cortex XSOAR Feed Integration  
Task 2 - Configure the Generic Export Indicators Service  
Task 3 - Configure EDL in VM-Series Firewall  
Task 4 - Add address to PAN-OS using the XSOAR Integration  

**Activity 8: Better Together - Cortex XSOAR with Prisma Cloud Compute**  
Task 1 - XSOAR Alert Profile in Prisma Cloud Compute  
Task 2 - Add Prisma Cloud Compute Instance in Cortex XSOAR  
Task 3 - Run Command Injection Attack  
Task 4 - Cortex XSOAR Incidents and Alerts  

**Activity 9: Feedback on Ultimate Test Drive**  
Task 1: Take the online survey  

**Troubleshooting Page**  
Task 1 - General Troubleshooting  
Task 2 - Mailbox Redeployment  
Task 3 - XSIAM  



#### Overview
Ultimate Test Drive - SecOps Platform Workshop
The SecOps UTD lab environment consists of the following tabs:
1. **Overview**: A quick overview of lab environment and lab activities
2. **Workshop Guide**: Click this tab to open the lab guide
3. **Survey**: A short survey to get your feedback
4. **Cortex XSOAR (GUI)**: This is a self hosted version of Cortex XSOAR (creds: admin/P@lo@lto@123)
5. **Cortex XDR (GUI)**: This is the Palo Alto Networks Cortex XDR tenant.
6. **Cortex XSIAM (GUI)**: This is the Palo Alto Networks Cortex XSIAM tenant.
7. **Application Portal (GUI)**: Through this page, you can access VM-Series NGFW, Cortex XSOAR and other applications (creds: kasm_user/p@lo@lto)
8. **Attacker (VM)**: This is a Kali Linux system virtual machine used for penetration testing. 
9. **Windows Client (VM)**: This is a Windows® 10 virtual machine.
10. **Linux Client (VM)**: Ubuntu Virtual Machine.
11. **Docker Workstation**: This is a VM that hosts Prisma Cloud Compute Edition and other workloads.

## Activity 1: Overview of the Cortex Product Family
#### Application Portal (kasm_user/p@lo@lto)
<img width="1895" height="804" alt="image" src="https://github.com/user-attachments/assets/923b0952-83f3-42e7-a5a4-c4c19e3ed4e9" />  
<img width="1060" height="609" alt="image" src="https://github.com/user-attachments/assets/0571845c-22ec-48cb-af61-96f05ae49a4c" />  

#### VM-Series Firewall
Name: student
Password: utd135
<img width="1785" height="590" alt="image" src="https://github.com/user-attachments/assets/46c5a1f8-58b5-45c8-bf6a-999ebe9cf14b" />
<img width="1771" height="868" alt="image" src="https://github.com/user-attachments/assets/5b7b99c9-dc2c-42c9-901e-e655898062f1" />
<img width="1382" height="882" alt="image" src="https://github.com/user-attachments/assets/1d33378d-4610-489a-8635-52efbb4ac49b" />
<img width="1830" height="747" alt="image" src="https://github.com/user-attachments/assets/38c373c9-b140-4ecc-ad43-e59df7bc0dcc" />
<img width="1796" height="937" alt="image" src="https://github.com/user-attachments/assets/4ce76032-2498-4bf5-bcec-401391792edd" />

## Activity 2: Cortex XDR - Phishing Case Study
#### Windows Client
Install Cortex agent in Windows
> cd C:\Users\root\Desktop
> ./Install-Cortex-XDR.ps1
<img width="1620" height="759" alt="image" src="https://github.com/user-attachments/assets/eca272f6-2c52-4d28-be0c-e0034e05268b" />
<img width="1114" height="750" alt="image" src="https://github.com/user-attachments/assets/1fad8b60-93c9-43ed-bbe6-c7ef753143a0" />
<img width="1145" height="728" alt="image" src="https://github.com/user-attachments/assets/0ddce1c7-8858-4ca7-8895-1bbd47e869f7" />
<img width="1047" height="615" alt="image" src="https://github.com/user-attachments/assets/6d6e0332-699b-4be5-bd93-90921c33c01e" />
如果Enable失敗 就可以 在cmd 輸入command，command完成后請Restart 機器  
> cd C:\Users\root\Desktop  
> ./xdr-checkin.ps1  

<img width="1213" height="672" alt="image" src="https://github.com/user-attachments/assets/7ac3ffec-69fe-4eb0-8763-c742f592c78a" />
> hostname

#### Linux Client
Install Cortex agent in Linux
> bash install-cortex-xdr.sh
<img width="1385" height="753" alt="image" src="https://github.com/user-attachments/assets/f7b40ff3-04be-4354-89a4-b71a15a7bc97" />
<img width="1424" height="738" alt="image" src="https://github.com/user-attachments/assets/ff08bf27-4fe9-4c5d-a79e-b7b5871b78d9" />

#### Cortex XDR
<img width="1198" height="739" alt="image" src="https://github.com/user-attachments/assets/dae2605d-707b-44f9-8c62-57c5715993c4" />
<img width="1865" height="931" alt="image" src="https://github.com/user-attachments/assets/0cb9690a-c74a-4d23-b048-3664bbf16781" />
<img width="1727" height="878" alt="image" src="https://github.com/user-attachments/assets/d4e15d21-7e9b-4169-b30c-09ac2541a117" />
<img width="1559" height="598" alt="image" src="https://github.com/user-attachments/assets/a4e26690-ae14-47e8-893d-0c58f54aacdb" />
<img width="1831" height="1179" alt="image" src="https://github.com/user-attachments/assets/2c70e492-1458-4df2-abfd-bb151adedfc7" />
<img width="1852" height="908" alt="image" src="https://github.com/user-attachments/assets/0e9aa774-284e-431f-bb6c-fdcaa3d5d562" />
<img width="1766" height="1019" alt="image" src="https://github.com/user-attachments/assets/e64e53d3-cde6-409b-a44f-a681b844c958" />
<img width="1888" height="839" alt="image" src="https://github.com/user-attachments/assets/39c0bebf-c400-4d2a-b158-84471636225f" />
<img width="1790" height="1134" alt="image" src="https://github.com/user-attachments/assets/bbb1c71d-fe03-4532-9b7a-7aebd0680a33" />
<img width="1897" height="1194" alt="image" src="https://github.com/user-attachments/assets/08b1cec7-e5e8-4afa-86c1-4e44b4bfe03b" />

#### Attacker
<img width="1177" height="257" alt="image" src="https://github.com/user-attachments/assets/00522b95-c8db-4952-914a-26a0e331d4f9" />
> msfconsole -r 01-browser-exploit.rc
<img width="1212" height="382" alt="image" src="https://github.com/user-attachments/assets/486834b9-f7ad-444c-869b-74546510d6a7" />

<img width="1333" height="709" alt="image" src="https://github.com/user-attachments/assets/fe95807f-73a6-464e-bcf2-e8eed1b898d5" />


## Part 2
#### Windows Client
<img width="1540" height="956" alt="image" src="https://github.com/user-attachments/assets/704071b3-2b22-41fc-8256-6eae0dcf860c" />
<img width="1563" height="1129" alt="image" src="https://github.com/user-attachments/assets/bc25a7d1-2f3f-4e61-a69e-5417d03ebd15" />
<img width="840" height="462" alt="image" src="https://github.com/user-attachments/assets/4c254288-61e8-4b1a-b74d-e39485b0cd93" />
<img width="812" height="678" alt="image" src="https://github.com/user-attachments/assets/daec5b87-b92a-47f6-a451-311ffa77b4b0" />


#### Attacker
<img width="1392" height="714" alt="image" src="https://github.com/user-attachments/assets/ae46899f-5f1f-43ac-b986-ddd8f82a0b91" />

#### Cortex XDR
<img width="1866" height="862" alt="image" src="https://github.com/user-attachments/assets/3d060ea3-6828-47c5-be08-f6db3e9e0f18" />
<img width="1861" height="1030" alt="image" src="https://github.com/user-attachments/assets/78d3f435-9710-4650-885c-b0eba1b1fcdc" />

<img width="1917" height="1191" alt="image" src="https://github.com/user-attachments/assets/f27a0d8c-507e-4381-8204-61ae78053fad" />
<img width="1913" height="918" alt="image" src="https://github.com/user-attachments/assets/96e8a47e-cb31-48ce-bd5e-ba042ee7be7a" />
<img width="1910" height="914" alt="image" src="https://github.com/user-attachments/assets/4d203e64-9be3-4153-a344-3a879f9edbef" />

## Activity 3: Cortex XDR - Remote Code Exploit Case Study
#### Windows Client Part 1
<img width="1451" height="616" alt="image" src="https://github.com/user-attachments/assets/f7f8e376-4bbb-4f35-ab20-ac1e3e1d474b" />
<img width="1723" height="893" alt="image" src="https://github.com/user-attachments/assets/6d933ad6-c283-4f5c-9016-4c112182b0c8" />

#### Attacker Part 1
> msfconsole -r 02-activemq-exploit.rc
<img width="1309" height="572" alt="image" src="https://github.com/user-attachments/assets/0ac4296c-ace6-48c8-b72f-993c8b2e613e" />
<img width="1396" height="719" alt="image" src="https://github.com/user-attachments/assets/a945b811-5c3e-4c6a-befb-20ca584bb42f" />

#### Windows Client Part 2
<img width="1727" height="914" alt="image" src="https://github.com/user-attachments/assets/aa35d52c-d538-4c2a-a3bd-6792c1196a4d" />
<img width="1575" height="891" alt="image" src="https://github.com/user-attachments/assets/77735bba-e810-42dd-8e42-de74e2b8be33" />

#### Cortex XDR 1
### Task 1 - ActivePwn: Windows Remote Code Exploit
<img width="1908" height="1194" alt="image" src="https://github.com/user-attachments/assets/1e50f072-c65c-4b85-bb0a-10372977d3db" />
<img width="1908" height="1194" alt="image" src="https://github.com/user-attachments/assets/23f57e15-cbfd-4aff-9799-92ea09a63727" />
<img width="1912" height="1192" alt="image" src="https://github.com/user-attachments/assets/e471464c-139f-4601-8750-545cce0625c6" />
<img width="1915" height="1191" alt="image" src="https://github.com/user-attachments/assets/1fd85ba9-3d34-4ecb-b636-459505d10d89" />
<img width="1916" height="1180" alt="image" src="https://github.com/user-attachments/assets/a980c55b-6e09-4a7a-bdd1-57f2e2304a87" />
<img width="1919" height="1180" alt="image" src="https://github.com/user-attachments/assets/f736d18c-db3d-4166-a739-462ee2ff7303" />
<img width="1301" height="847" alt="image" src="https://github.com/user-attachments/assets/40066fea-d12e-4770-8132-5a5f35f15983" />

### Task 2 - Windows Privilege Escalation and Post Exploitation
#### Attacker Part 2
> resource 03-priv-escalation.rc
<img width="1392" height="699" alt="image" src="https://github.com/user-attachments/assets/e58bd2b6-8902-4794-b334-4be42ce3fde9" />

> resource 04-post-exploitation.rc
<img width="1394" height="710" alt="image" src="https://github.com/user-attachments/assets/514d6849-1221-4c6b-920f-4b1c2e454cb4" />

> nc -l -p 1337
<img width="1396" height="719" alt="image" src="https://github.com/user-attachments/assets/46d460ee-7690-43e9-b038-3c115bafb822" />

#### Cortex XDR Part 2
<img width="1912" height="1191" alt="image" src="https://github.com/user-attachments/assets/b8600779-6947-43b7-b953-0565270e765d" />
<img width="1915" height="1197" alt="image" src="https://github.com/user-attachments/assets/9ff96aa1-d57d-44f7-b3fe-0dcb404af426" />
<img width="1917" height="1199" alt="image" src="https://github.com/user-attachments/assets/56d95fb8-2c06-4a02-8789-9a5a9fb30b86" />
<img width="1917" height="1199" alt="image" src="https://github.com/user-attachments/assets/86b30ceb-c50b-45a4-aff7-6329ffe26322" />
<img width="1919" height="1199" alt="image" src="https://github.com/user-attachments/assets/c5cf01d7-f37d-4d0b-96d5-807944530fee" />
<img width="1919" height="1193" alt="image" src="https://github.com/user-attachments/assets/f33a98dd-141a-46ec-9e8e-2322e76e8381" />

### Task 3 - CodeInject: Linux Spring Framework Exploit
#### Liunx Clinet Part 1
> sudo bash xdr-status.sh
<img width="1580" height="768" alt="image" src="https://github.com/user-attachments/assets/9103f77b-956c-4132-8457-d56fe4c14355" />

> hostname
<img width="1032" height="677" alt="image" src="https://github.com/user-attachments/assets/2acc34e9-d6aa-4124-a973-37c838b5866c" />

#### Cortex XDR Part 3
<img width="1915" height="1193" alt="image" src="https://github.com/user-attachments/assets/1aff8618-ce45-454f-b7b8-1b904f4bbc7b" />
<img width="1919" height="1199" alt="image" src="https://github.com/user-attachments/assets/c8b24e60-d0e7-4dc9-9825-69a410344fe4" />
<img width="1833" height="1171" alt="image" src="https://github.com/user-attachments/assets/bd0dc7b6-d09b-4f3d-913e-d3055052b40b" />

#### Attacker Part 3
<img width="1286" height="735" alt="image" src="https://github.com/user-attachments/assets/746e5b4c-4da3-43d7-89f9-e0d697810266" />

> resource 02-post-exploitation.rc

#### Cortex XDR Part 4
<img width="1913" height="895" alt="image" src="https://github.com/user-attachments/assets/72bf86b5-2072-4d20-abd1-fee0bdef6012" />


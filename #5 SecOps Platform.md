<img width="1273" height="882" alt="image" src="https://github.com/user-attachments/assets/0853602b-5ae5-4b28-b292-4240f83cc9bd" />## SecOps Platform  
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
> msfconsole -r 01-spring-exploit.rc
<img width="1286" height="735" alt="image" src="https://github.com/user-attachments/assets/746e5b4c-4da3-43d7-89f9-e0d697810266" />

> resource 02-post-exploitation.rc
<img width="1209" height="659" alt="image" src="https://github.com/user-attachments/assets/f569d8e0-50a0-4026-8012-d86340f25598" />

#### Cortex XDR Part 4
<img width="1911" height="920" alt="image" src="https://github.com/user-attachments/assets/969598dd-12dc-4105-a2dd-6c05570f8401" />
<img width="1910" height="930" alt="image" src="https://github.com/user-attachments/assets/6b0ff006-63f1-44be-9362-cb3b784eaf76" />
<img width="1919" height="1037" alt="image" src="https://github.com/user-attachments/assets/5aefec6b-b19d-4bb9-b9d5-c8d81759d741" />
<img width="1916" height="930" alt="image" src="https://github.com/user-attachments/assets/04de68e5-a8da-4b2d-9315-12cc76474b89" />

## Activity 4: Cortex XSOAR Phishing Email Case Study
In this activity you will:
● Review the setup - email client and phishing email
● See how Cortex XSOAR can integrate with Mail clients.
● Understand and work with Cortex XSOAR.
● See Cortex XSOAR in action when it comes to Phishing emails and how it can help security
team’s response times through powerful automation in the form of XSOAR playbooks.
****

### Task 1 - Review the Setup
Cortex XSOAR Credentials: (admin/P@lo@lto@123)

#### Application Portal Part1 
<img width="1906" height="802" alt="image" src="https://github.com/user-attachments/assets/6bdd9374-daaf-4087-940b-8dd2db8d034a" />

#### Windows Client Part1
username: student
password: password
<img width="1553" height="946" alt="image" src="https://github.com/user-attachments/assets/b10f391e-7199-45ba-9dae-90d26183c8d6" />
<img width="1325" height="941" alt="image" src="https://github.com/user-attachments/assets/393e02ea-0c90-49b8-9db5-00dc4d5b32b8" />

#### Cortex XSOAR Part1
username: admin
password: P@lo@lto@123
<img width="1474" height="763" alt="image" src="https://github.com/user-attachments/assets/90517476-b892-4993-abdf-26818789c1dc" />
<img width="1486" height="771" alt="image" src="https://github.com/user-attachments/assets/47a1e3e1-2ad4-4366-acf8-50067d7751fb" />
<img width="1489" height="776" alt="image" src="https://github.com/user-attachments/assets/1fe622b7-2952-485c-9cf4-e89b180de465" />
<img width="1486" height="780" alt="image" src="https://github.com/user-attachments/assets/c0612ef0-d886-478f-acf0-9ec0e1edd914" />
> a) Incident type: The value is currently set to Phishing. This means that the incidents that are created by this instance are classified as Phishing and in response to Phishing incident type, relevant automations are run by XSOAR  
> b) Mail Server Hostname/IP address: This is the IP address of our self hosted mail server in the lab.  
> c) IMAP port: This value indicates the IMAP port of our self hosted mail server in lab.  
> d) username/password: Credentials for our mailbox.  
> e) Incoming mail folder: This is the folder within the student email account (student). This indicates that any emails that end up in the Phishing folder are monitored by XSOAR and a corresponding incident is created for each email in the Phishing folder.  
> f) First Fetch Time: This corresponds to the oldest email that will be fetched. For example, if it’s set to 1 year, all emails within the past year from the current date, will be fetched.  
> g) Incidents Fetch Interval: The frequency at which XSOAR queries the configured mailbox and folder for emails.  

<img width="1508" height="1041" alt="image" src="https://github.com/user-attachments/assets/bad9ffc7-74a9-4922-be4c-930addc3aadd" />
<img width="1508" height="1045" alt="image" src="https://github.com/user-attachments/assets/2e0a0c38-978c-41a0-a2d1-3b43fcf46e4f" />
<img width="1675" height="890" alt="image" src="https://github.com/user-attachments/assets/28d732dc-3c9b-4af1-ac7f-86b83b17c6f3" />
<img width="1511" height="749" alt="image" src="https://github.com/user-attachments/assets/04c59ead-633a-4f76-b3a1-11f5ba2c3a5b" />
<img width="1540" height="698" alt="image" src="https://github.com/user-attachments/assets/715b670b-bbb5-43ef-b4e0-2509f6ab3b62" />

### Task 2 - Report Phishing Email and see Cortex XSOAR in action
Complexity: Easy  
Product(s): Cortex XSOAR  
Scenario:  
● As an end user, you have determined that you have received a Phishing email and decided to report it
as phishing.  
● Your organization has Cortex XSOAR that monitors phishing emails and immediately springs into action
when a phishing email is reported and performs automation via Playbooks.  
● Understand the playbook that gets executed in response to the incident and the steps within that
playbook.  
● Review the information and artifacts that it gathers from the email.
Key takeaways:  
● Cortex XSOAR incidents via Mail Listener content pack  
● Cortex XSOAR Phishing playbook  
● Cortex XSOAR indicators, Artifacts and more.  

#### Cortex XSOAR Part2.1
<img width="1913" height="955" alt="image" src="https://github.com/user-attachments/assets/c8e93de8-234d-44a1-aab1-5bd36cb0fc89" />

#### Windows Client Part2.1
<img width="1326" height="949" alt="image" src="https://github.com/user-attachments/assets/9ff81bc0-e38d-4b77-a4eb-fd462657975a" />

#### Windows Client Part2.2
<img width="1362" height="956" alt="image" src="https://github.com/user-attachments/assets/20c9dd15-e60b-45f5-81ba-ecf9a7572e05" />

#### Cortex XSOAR Part2.2
<img width="1908" height="949" alt="image" src="https://github.com/user-attachments/assets/575ee399-fb84-4f34-b100-4d1f8723f57e" />

### Task 3 - Investigate a Phishing Incident in XSOAR - I
Complexity: Easy  
Product(s): Cortex XSOAR  
Scenario:  
● Cortex XSOAR creates an incident. Understand the playbook that gets executed in response to the incident and the steps within that playbook.  
● Review the information and artifacts that it gathers from the email.  
Key takeaways:  
● Cortex XSOAR Phishing playbook.  
● Cortex XSOAR indicators, Artifacts and more.  
<img width="1908" height="949" alt="image" src="https://github.com/user-attachments/assets/e4fd32c5-86aa-4397-99ce-28ed8962e265" />

#### Cortex XSOAR Part3
###### 1 Someone has your password - **Case info**
<img width="1918" height="951" alt="image" src="https://github.com/user-attachments/assets/634cb9a1-3680-4cb6-a395-685cec0650d4" />

###### 1 Someone has your password - **Investigation**
<img width="1919" height="945" alt="image" src="https://github.com/user-attachments/assets/993881ae-9e07-44bc-9f46-6529a9746408" />
<img width="1917" height="954" alt="image" src="https://github.com/user-attachments/assets/acfdc436-dc53-4b7d-abc0-0c0869bdd1a7" />

###### 1 Someone has your password - **Work Plan**
<img width="1919" height="943" alt="image" src="https://github.com/user-attachments/assets/c94935fa-eea0-4033-9d25-3d559e672d7e" />

The graph may move around if the Playbook is still executing as we have selected the Follow checkbox.  
This will help you understand which specific step is currently being executed.  
Green cards indicate that a step has been successfully completed.  
The orange card indicates that a manual action is needed from the analyst.  
A bluecard with a gear icon indicates that a particular step is being executed.  

<img width="1372" height="167" alt="image" src="https://github.com/user-attachments/assets/162c08d1-479e-4f6f-85ff-93cc6b07ec95" />
<img width="1918" height="949" alt="image" src="https://github.com/user-attachments/assets/b4f8aed3-3a24-421c-b4f1-6ea188e4dad9" />

<img width="1918" height="949" alt="image" src="https://github.com/user-attachments/assets/ca13f10c-4893-4b4d-9a41-b095ce8e414c" />
<img width="1919" height="950" alt="image" src="https://github.com/user-attachments/assets/fa4dd45a-3c50-495e-a7cb-e0114e02cf31" />
<img width="1918" height="947" alt="image" src="https://github.com/user-attachments/assets/a5846b07-3319-41f4-b83e-10a9bad00245" />
<img width="1919" height="950" alt="image" src="https://github.com/user-attachments/assets/b65e5b6e-26e6-46ee-b02e-af258e551968" />

o Manually search and delete emails: Click on this box to review and select Mark Completed.  
o Which Indicators would you like to block: Here the user is prompted for specific indicators to block such as specific IPs, URL, Files, Emails and Domain. Select the following options and clicksubmit Answers  

<img width="1919" height="945" alt="image" src="https://github.com/user-attachments/assets/f1f9838b-1449-40ca-82fa-fd28f0682073" />

<img width="1919" height="950" alt="image" src="https://github.com/user-attachments/assets/ed78645d-0cf5-4cc0-945b-8c4fcc06d776" />

<img width="1919" height="944" alt="image" src="https://github.com/user-attachments/assets/d729b0d6-380a-48a7-b278-34dc28807c19" />

#### Windows Client Part3
<img width="1283" height="885" alt="image" src="https://github.com/user-attachments/assets/03c50e2c-4898-425a-8e21-35e0d49467c9" />
<img width="1285" height="884" alt="image" src="https://github.com/user-attachments/assets/8b74081c-bfbf-4909-a3a6-549868de67bf" />
<img width="1273" height="882" alt="image" src="https://github.com/user-attachments/assets/d277c175-d810-470c-9c62-8e0cde040008" />



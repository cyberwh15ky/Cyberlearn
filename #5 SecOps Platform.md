## SecOps Platform  
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

## Activity 0: Log in to the UTD Workshop
### Task 1 - Log in to Your Ultimate Test Drive Class Environment
#### Overview
Ultimate Test Drive - SecOps Platform Workshop
The SecOps UTD lab environment consists of the following tabs:
1. **Overview**: A quick overview of lab environment and lab activities
     - a. **Workshop Guide**: Click this tab to open the lab guide
     - b. **Survey**: A short survey to get your feedback
2. **Cortex XSOAR (GUI)**: This is a self hosted version of Cortex XSOAR (creds: admin/P@lo@lto@123)
3. **Cortex XDR (GUI)**: This is the Palo Alto Networks Cortex XDR tenant.
4. **Cortex XSIAM (GUI)**: This is the Palo Alto Networks Cortex XSIAM tenant.
5. **Application Portal (GUI)**: Through this page, you can access VM-Series NGFW, Cortex XSOAR and other applications (creds: kasm_user/p@lo@lto)
6. **Attacker (VM)**: This is a Kali Linux system virtual machine used for penetration testing. 
7. **Windows Client (VM)**: This is a Windows® 10 virtual machine.
8. **Linux Client (VM)**: Ubuntu Virtual Machine.
9. **Docker Workstation**: This is a VM that hosts Prisma Cloud Compute Edition and other workloads.

### Task 2 - Understand UTD Components  
This UTD environment consists of the following components:
● Linux Client: This is a Ubuntu virtual machine, on which you will carry out the exercises in our workshop related to Cortex XDR.  
● Windows Client: This is a Windows® 10 virtual machine, on which you will carry out the exercises in our workshop related to Cortex XDR.  
● Attacker: This virtual machine is a Kali Linux system that hosts Metasploit® , a penetration testing tool. You will use this virtual machine to take on the role of the attacker in our workshop exercises.  
● Application Portal: This is a Portal through which some of the other components of the lab can be accessed.  
● Cortex XDR (GUI): This is the Palo Alto Networks Cortex XDR tenant.  
● Cortex XSIAM (GUI): This is the Palo Alto Networks Cortex XSIAM tenant.  
● Docker Workstation: The Docker workstation hosts Prisma Cloud Compute edition in the form of a self hosted container. Additionally, it has a few other container workloads running such as Nginx, http and DVWA.  

### Task 3 - Application Portal Overview
The Application Portal is one stop shop for all the applications that are used in this workshop. Under the hood, it utilizes Kasm Workspaces, which is a streaming platform for delivering browser-based access to applications, and web services and this setup is running as a docker container within the Docker workstation. Within this workspace, Chrome browser is preinstalled and it provides a secure and isolated browsing environment.  
Below are some key points to note:  
1. Credentials: kasm_user/p@lo@lto  
2. Homepage: http://homepage:3000 (henceforth referred to as Homepage).  
3. The Application Portal, upon startup, opens the webpage: If Homepage is not loaded, please refresh the browser tab or open a new browser tab and navigate to aforementioned URL.  
4. Homepage provides you access to the various applications used within this workshop.  
5. These applications are all running as Docker containers and they are accessible via their internal IPs only via the Application portal.  
6. This ensures that the traffic doesn’t go out the internet, making the setup a bit more secure and reduces latency.  

Below are the list of applications that are accessible via Application Portal and the respective tracks where these
are used in the lab:  
1. VM-Series NGFW: VM Series Next Generation Firewall  
     - ➢ Credentials: student/utd135  
2. Prisma Cloud Compute Edition: Click this tab to login on the Prisma Cloud Compute Edition (PCCE) console.  
     - ➢ Credentials: admin/p@lo@lto  
2. Cortex XSOAR: Click this tab to login on Cortex XSOAR console  
     - ➢ Credentials: admin/P@lo@lto@123  
3. Webmail: Click this tab to login on to a self hosted Mail server that is used in this lab.  
     - ➢ Credentials: student/password  
4. The Outdoor Store: A functional website hosted for demo purposes that will be used in Cortex XSOAR related activity.  
5. httpd: Apache HTTPd server  
6. DVWA: Damn Vulnerable Web Application docker container is a PHP/MySQL web application  

### Task 4 - Enable Internet Access on the ML-Powered Next-Generation Firewall
<img width="1302" height="631" alt="image" src="https://github.com/user-attachments/assets/498c143f-b840-4cff-9729-4bb9c56e765b" />  

> **Name: student**  
> **Password: utd135**  

<img width="1189" height="381" alt="image" src="https://github.com/user-attachments/assets/1f760b66-7a47-498d-8f7b-83c252200470" />  

<img width="1612" height="337" alt="image" src="https://github.com/user-attachments/assets/98460bcc-2eb4-412a-970d-d3b41442c3ed" />  

<img width="1583" height="458" alt="image" src="https://github.com/user-attachments/assets/6afd3cc6-075d-429b-83e2-526545e20182" />  

<img width="1417" height="830" alt="image" src="https://github.com/user-attachments/assets/e9c07f0b-4bc4-46ad-918b-cdf9b336b889" />  

<img width="1443" height="459" alt="image" src="https://github.com/user-attachments/assets/119e46e8-9052-4bed-986c-1c5ee06d5c85" />  





## Activity 1: Overview of the Cortex Product Family
#### Application Portal
> **Name: kasm_user**  
> **Password: p@lo@lto**  
<img width="1895" height="804" alt="image" src="https://github.com/user-attachments/assets/923b0952-83f3-42e7-a5a4-c4c19e3ed4e9" />  
<img width="1060" height="609" alt="image" src="https://github.com/user-attachments/assets/0571845c-22ec-48cb-af61-96f05ae49a4c" />  

#### VM-Series Firewall
> **Name: student**  
> **Password: utd135**  
<img width="1785" height="590" alt="image" src="https://github.com/user-attachments/assets/46c5a1f8-58b5-45c8-bf6a-999ebe9cf14b" />
<img width="1771" height="868" alt="image" src="https://github.com/user-attachments/assets/5b7b99c9-dc2c-42c9-901e-e655898062f1" />
<img width="1382" height="882" alt="image" src="https://github.com/user-attachments/assets/1d33378d-4610-489a-8635-52efbb4ac49b" />
<img width="1830" height="747" alt="image" src="https://github.com/user-attachments/assets/38c373c9-b140-4ecc-ad43-e59df7bc0dcc" />
<img width="1796" height="937" alt="image" src="https://github.com/user-attachments/assets/4ce76032-2498-4bf5-bcec-401391792edd" />

## Activity 2: Cortex XDR - Phishing Case Study
**Background:** This activity demonstrates how Cortex XDR can help secure your Windows and Linux VMs against modern exploits such as Browser based exploits as well as 0-day remote exploits.  
In this activity you will:  
     ● Install XDR on Windows and Linux clients  
     ● Attack Windows see XDR in action - how it can detect and prevent attacks browser based attacks  

### Task 1 - Install XDR Agent on Windows and Linux Clients
Complexity: Easy  
Product(s): Cortex XDR Agent  
Scenario:  
     ● Install XDR Agents on Windows and Linux Clients  

#### Windows Client  
**Step 2.** You should see a Powershell window open with a command typed in that installs cortex XDR agent. If it's not present, in the windows search bar, search for powershell to open a new powershell window.  
Then run the following commands:  

Install Cortex agent in Windows  
> cd C:\Users\root\Desktop  
> ./Install-Cortex-XDR.ps1  
<img width="1620" height="759" alt="image" src="https://github.com/user-attachments/assets/eca272f6-2c52-4d28-be0c-e0034e05268b" />

**Step 3.** The script will rename the current Windows host and download the XDR agent, extract it and install it. During installation, follow through the installation prompts. This process may take a few minutes.  
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

### Task 2 - Review Cortex XDR Policies
#### Cortex XDR
**Step 1.** Head over to the Cortex XDR CloudShare tab and login to the XDR tenant using the saved credentials. At the login screen, click inside the Password field to use the saved password.  
<img width="1198" height="739" alt="image" src="https://github.com/user-attachments/assets/dae2605d-707b-44f9-8c62-57c5715993c4" />

**Step 2.** From the left pane, click the Endpoints > Policy Management, then click on Policy Rules on the left node to view the security profiles configured for Windows, macOS, Linux and Android.
<img width="1865" height="931" alt="image" src="https://github.com/user-attachments/assets/0cb9690a-c74a-4d23-b048-3664bbf16781" />

**Step 3.** From the left pane, click the Endpoints > Policy Management, then click on Profiles on the left node to view the security profiles available to Windows, macOS, Linux and Android.
<img width="1727" height="878" alt="image" src="https://github.com/user-attachments/assets/d4e15d21-7e9b-4169-b30c-09ac2541a117" />

**Step 4.** Expand Windows to see the configured Policies for Windows OS. Right click on the utd-cortex-win-exploit-ALERT rule and select the View Profile icon to view the configurations. This profile is configured to block browser based exploits (which we will be testing in the later steps) and configured to ALERT on all other types of attacks (which we will be testing in the later steps also).  
<img width="1559" height="598" alt="image" src="https://github.com/user-attachments/assets/a4e26690-ae14-47e8-893d-0c58f54aacdb" />
<img width="1831" height="1179" alt="image" src="https://github.com/user-attachments/assets/2c70e492-1458-4df2-abfd-bb151adedfc7" />

**Step 5.** Navigate to Assets > Vulnerability Assessment > Vulnerability Assessment to view the Vulnerability assessment of the current active endpoints. If there are active endpoints connected to the tenant, you will be able to see the data populated in this page. On the top right corner of the screen, you can also toggle between CVEs and Endpoints.

**⚠️Note:**  
❖ Vulnerabilities are present only if there’s a connected endpoint (XDR Client) that’s been active for some time to undergo a vulnerability assessment. If you do not see CVEs, it is due to an absence of a connected endpoint.  
<img width="1852" height="908" alt="image" src="https://github.com/user-attachments/assets/0e9aa774-284e-431f-bb6c-fdcaa3d5d562" />
<img width="1766" height="1019" alt="image" src="https://github.com/user-attachments/assets/e64e53d3-cde6-409b-a44f-a681b844c958" />

**Step 6.** Navigate to Detection Rules > BIOC. Here you can see Behavioral Indicators Of Compromise (BIOC) rules that are currently enabled.  
<img width="1888" height="839" alt="image" src="https://github.com/user-attachments/assets/39c0bebf-c400-4d2a-b158-84471636225f" />

**Step 7.** Head over to Endpoints > All Endpoints. Here you will see a list of endpoints. Find the endpoint associated with the hostname of your Windows client. Right click on your endpoint in the list > Endpoint Data > View Incidents > See incidents in the same tab. Here, you should see that there are no incidents associated with your endpoint. Do not navigate away from this XDR page within the XDR tab but you can switch back and forth between other CloudShare tabs.
<img width="1790" height="1134" alt="image" src="https://github.com/user-attachments/assets/bbb1c71d-fe03-4532-9b7a-7aebd0680a33" />
<img width="1897" height="1194" alt="image" src="https://github.com/user-attachments/assets/08b1cec7-e5e8-4afa-86c1-4e44b4bfe03b" />


## Task 3 - BrowserBreach: Chrome Vulnerability Triggered by Phishing Email
#### Attacker
<img width="1177" height="257" alt="image" src="https://github.com/user-attachments/assets/00522b95-c8db-4952-914a-26a0e331d4f9" />  

**Step 3.** Once you are logged into the Attacker VM, you will see a terminal window open on the desktop. In the open terminal window, click on the Chrome Exploit tab. A command should already be populated. Press Enter or Return at this prompt and the attack will be launched. It will take a few seconds for the Metasploit console to come up.

> msfconsole -r 01-browser-exploit.rc

<img width="1212" height="382" alt="image" src="https://github.com/user-attachments/assets/486834b9-f7ad-444c-869b-74546510d6a7" />  


💡Insights:  
❖ We have created Metasploit Resource Scripts that contain the commands to launch the exploit with all the necessary configuration for your convenience. You can view the resource scripts for Windows and Linux in the Attacker VM at the following locations respectively:  

> /home/sysadmin/Windows-Attacks  
> /home/sysadmin/Linux-Attacks

❖ The command that you executed at the Browser Exploit terminal tab will start the Metasploit program and configure the Attacker VM to listen for incoming connections and serve the Google Chrome JSCreate Side-effect Type Confusion zero-day exploit to the Victim VM.  
❖ When configuration is completed, the terminal should display the following prompt:  

> $msf6 exploit(multi/browser/chrome_jscreate_sideeffect)>

❖ The Attacker system is now waiting for a reverse connection from the Victim system.  


<img width="1333" height="709" alt="image" src="https://github.com/user-attachments/assets/fe95807f-73a6-464e-bcf2-e8eed1b898d5" />  


## Part 2  
#### Windows Client  
**Step 4.** Head over to the Windows Client tab. You should already see a browser open (launched as part of the startup scripts). If the browser isn’t open, open it by clicking on the Chrome icon on the desktop. From the browser window, select the Mail bookmark. Use the following credentials to login.  

> username: student
> password: password

This should open a mailbox and here you should see an email. Ensure to maximize the Chrome browser window in the Windows VM to ensure that all the options are visible/  

**💡Insights:**  
❖ An email with the subject line **Someone has your password** is displayed in the preview pane.  
❖ This looks like a legitimate email from Google, informing you that someone is trying to access your device. The email suggests you review the device to ensure your password is safe.  
❖ This is an email Phishing attack that delivers **Google Chrome JSCreate Side-effect Type Confusion zero-day exploit**  

<img width="1540" height="956" alt="image" src="https://github.com/user-attachments/assets/704071b3-2b22-41fc-8256-6eae0dcf860c" />  
<img width="1563" height="1129" alt="image" src="https://github.com/user-attachments/assets/bc25a7d1-2f3f-4e61-a69e-5417d03ebd15" />  

**Step 6**. By assuming the role of an unsuspecting user and clicking on Review Your Devices Now link in the email, a new tab will open, and you would be taken to the gmail login page where the Google Chrome browser exploit is triggered. (If the webpage appears to be loading even after you see the gmail webpage, that’s the expected behavior or the exploit)

**Step 7.** You should now see a pop up from XDR Client indicating that it blocked a malicious activity. Review the details in the XDR pop up. Expand the show details to see the process details and additional information. When done reviewing, close the popup.

<img width="840" height="462" alt="image" src="https://github.com/user-attachments/assets/4c254288-61e8-4b1a-b74d-e39485b0cd93" />  

<img width="812" height="678" alt="image" src="https://github.com/user-attachments/assets/daec5b87-b92a-47f6-a451-311ffa77b4b0" />  

#### Attacker
**Step 8.** Head back to the Attacker VM. In the Browser Exploit terminal tab, you should see that the exploit was delivered (but was detected and blocked by XDR) and there was no active session opened.  

**Step 9.** Enter sessions into the prompt to list the active sessions (There should be no active sessions on the Attacker VM):  

> msf6 exploit(multi/browser/chrome_jscreate_sideeffect) > sessions  

<img width="1392" height="714" alt="image" src="https://github.com/user-attachments/assets/ae46899f-5f1f-43ac-b986-ddd8f82a0b91" />  

#### Cortex XDR
**Step 10.** Head back to the **Cortex XDR** tab in CloudShare. **Refresh** the incident page and now you should see incidents related to the exploit which we just performed. Be sure to note down the **Incident ID** as you’ll be using this to identify and locate the right incident for the rest of the steps in this activity. In the below screenshot, the **Incident ID is 15**. In your case, it will differ from the screenshots.  

**⚠️Notes:**  
❖ If you have trouble locating the incident associated with your endpoint, please refer to **Activity 2 > Task 2 > Step 7** for instructions on locating incidents associated with your incident.  
❖ Alternatively, within the Incidents page, you can use the filters from the top right corner of your page to set the Hostname to that of your corresponding Windows Client’s hostname to see the relevant incidents.  

<img width="1866" height="862" alt="image" src="https://github.com/user-attachments/assets/3d060ea3-6828-47c5-be08-f6db3e9e0f18" />
<img width="1861" height="1030" alt="image" src="https://github.com/user-attachments/assets/78d3f435-9710-4650-885c-b0eba1b1fcdc" />

**Step 11.** Under Incident > Overview > Assets , If you see multiple Hosts listed, it is expected behavior (see note below)  

<img width="1917" height="1191" alt="image" src="https://github.com/user-attachments/assets/f27a0d8c-507e-4381-8204-61ae78053fad" />

**⚠️Notes:**  
❖ You may see multiple Hosts as part of the same incident. You can also expect to see that an Alert that was created for your Windows Host as part of the attack that you performed may get added to an existing incident. This happens because XDR associates alerts to an incident based on different criteria such:  
➢ Alert source, type and time period  
➢ Alerts on the same causality chain are grouped with the same incident if an open incident already exists.  
➢ Alerts involving the same Windows/Linux username.  
➢ Alerts involving the same malware file SHA256 hash.  
➢ Alerts involving the same command line processes.  
❖ This is expected behavior because an attack can affect several hosts or users and raises different alert types stemming from a single event. All artifacts, assets, and alerts from a threat event are gathered into an Incident.  
❖ In the lab, since we are performing the same kind of attacks on multiple Windows/Linux VMs, you can expect to see alerts being grouped in different incidents.  

**Step 12.** To filter alerts associated with your specific VM within the incident, navigate to Alerts and Insights and click on the filter icon. Select Host field for the Select Field and for Value, use your Windows Hostname.  

<img width="1913" height="918" alt="image" src="https://github.com/user-attachments/assets/96e8a47e-cb31-48ce-bd5e-ba042ee7be7a" />

**Step 13.** Within **Alerts and Insights** , you can see all the different alerts that belong to this incident. To find the alerts specific to the attack we just performed, you can click on the **Category** tab (if you do not see **Category** option, click on **"+and"** first and select the **Category** option from the dropdown list) to sort by the alerts by Category and you can look for an **Exploit** that was **Prevented (Blocked)**. Optionally, you can use filters to see only Exploits (Filter: **Category Contains Exploit**) and look for **Alert Name - Memory Corruption Exploit**

<img width="1910" height="914" alt="image" src="https://github.com/user-attachments/assets/4d203e64-9be3-4153-a344-3a879f9edbef" />

## Activity 3: Cortex XDR - Remote Code Exploit Case Study

**Background:** This activity demonstrates how Cortex XDR can help secure your Windows and Linux VMs against modern 0-day remote exploits.  
**In this activity you will:**  
     **● Attack Windows and Linux client and see XDR in action - how it can detect and prevent attacks and capture all the MITRE Techniques and Tactics**  

**Note:** This Activity is dependent on Activity 0 > Task 4 and Activity 2.  

### Task 1 - ActivePwn: Windows Remote Code Exploit

Complexity: Easy  
Scenario:  
     ● You have successfully installed a Cortex XDR agent on Windows and you want to see it in action.  
     ● The Victim is running a specific version of Apache Active MQ Message Broker which is vulnerable to Remote Code Exploitation (CVE-2023-46604) without any user interaction.  
     ● For this scenario, we have set the XDR protection mode to DETECT AND ALERT. This is done to showcase the capabilities of XDR.   
Key takeaways:  
     ● Cortex XDR ability to protect from Remote Code Exploitation  

#### Windows Client Part 1
**Step 1.** Click the **Windows Client** tab. Open **Chrome** browser via the Desktop shortcut. From the browser bookmarks, **click on ActiveMQ** to ensure that Active MQ service is up and running (the page should load when you click on ActiveMQ bookmark). If the service is running, move to step 3.  

<img width="1451" height="616" alt="image" src="https://github.com/user-attachments/assets/f7f8e376-4bbb-4f35-ab20-ac1e3e1d474b" />
<img width="1723" height="893" alt="image" src="https://github.com/user-attachments/assets/6d933ad6-c283-4f5c-9016-4c112182b0c8" />

#### Attacker Part 1
**Step 2.** If the page doesn’t load, execute the startup script by doubleclicking on the startup-script shortcut icon on the desktop and repeat step 1. Once you’ve verified that ActiveMQ is running, close the browser window close any powershell windows that are open.  
**Step 3.** Head back to the Attacker VM. Within the terminal window, click on the Windows Exploit terminal tab. There should already be a command typed up. Hit return to execute it.  

> msfconsole -r 02-activemq-exploit.rc

<img width="1309" height="572" alt="image" src="https://github.com/user-attachments/assets/0ac4296c-ace6-48c8-b72f-993c8b2e613e" />

**💡Insights:**  
❖ The command will start the Metasploit program and configure the Attacker VM to listen for incoming connections and serve the **Apache ActiveMQ Unauthenticated Remote Code Execution exploit** to the **Windows Client**  
❖ Once the exploit execution is complete, you should see a Meterpreter session open. This indicates that the exploit was completed successfully and we have obtained the reverse shell on the Windows Client  

**Step 4**. Once the command executes successfully, you will after you see a message that says **Meterpreter Session 1 opened…**. At this point, the terminal may appear stuck without a prompt when you see the message **Server Stopped**. At this point, hit return on your keyboard a couple of times to bring up a prompt. We will not be interacting with this session just yet and the current Meterpreter session will be running in the background. You can run the following command to confirm:
> sessions  

<img width="1396" height="719" alt="image" src="https://github.com/user-attachments/assets/a945b811-5c3e-4c6a-befb-20ca584bb42f" />

#### Windows Client Part 2

**Step 5.** Head back to the **Windows Client** and you should see a XDR pop up indicating that it detected a malicious activity. Since we have configured XDR to **DETECT and ALERT Only**, the attack was allowed and not blocked. Review the details from the XDR pop up and close it after reviewing.

<img width="1727" height="914" alt="image" src="https://github.com/user-attachments/assets/aa35d52c-d538-4c2a-a3bd-6792c1196a4d" />
<img width="1575" height="891" alt="image" src="https://github.com/user-attachments/assets/77735bba-e810-42dd-8e42-de74e2b8be33" />

#### Cortex XDR 1

**Step 6.** Head back to the Cortex XDR tab in CloudShare. Refresh the incident page and now you should see incidents related to the exploit which we just performed.  

**Step 7.** Within the Cortex XDR Cloud Tenant, check the checkbox that says Include Incident Insights. Click
on Alerts and Insights.  

<img width="1908" height="1194" alt="image" src="https://github.com/user-attachments/assets/1e50f072-c65c-4b85-bb0a-10372977d3db" />
<img width="1908" height="1194" alt="image" src="https://github.com/user-attachments/assets/23f57e15-cbfd-4aff-9799-92ea09a63727" />
<img width="1912" height="1192" alt="image" src="https://github.com/user-attachments/assets/e471464c-139f-4601-8750-545cce0625c6" />

**Step 8.** Now, you should be able to see the more recent Active MQ exploit that we ran, which was detected by
the XDR.  

<img width="1915" height="1191" alt="image" src="https://github.com/user-attachments/assets/1fd85ba9-3d34-4ecb-b636-459505d10d89" />

**Step 9.** Let’s investigate the Causality Chain for this specific Alert. Right click on the highlighted alert >
Investigate Causality Chain > Open Card in same tab.  

<img width="1916" height="1180" alt="image" src="https://github.com/user-attachments/assets/a980c55b-6e09-4a7a-bdd1-57f2e2304a87" />

**Step 10.** Causality Chain that indicates the chain of events that occurred. This includes both the Chrome exploit that we ran (which was blocked) and also the ActiveMQ exploit that we performed.  

<img width="1919" height="1180" alt="image" src="https://github.com/user-attachments/assets/f736d18c-db3d-4166-a739-462ee2ff7303" />

**Step 11.** Click on the Forensics Highlights to see the highlights and expand each item to explore.  

<img width="1301" height="847" alt="image" src="https://github.com/user-attachments/assets/40066fea-d12e-4770-8132-5a5f35f15983" />

### Task 2 - Windows Privilege Escalation and Post Exploitation  

**Complexity:** Easy  
**Product(s):** Cortex XDR Cloud Tenant  
**Scenario:**  
     ● As an attacker, you have successfully infiltrated a Windows Client.  
     ● You are looking to perform privilege escalation exploits to elevate your Windows privileges.  
     ● Upon escalating your privileges, you will perform credential extraction, lateral movement, executions, setup persistence. sensitive data preparation and exfiltration.  
**Key takeaways:**
     ● See in real time how Cortex XDR is capable of detecting and handling real world threats.

#### Attacker Part 2  

**Step 1.** Head over to the Attacker VM and make sure you are at the Windows Exploit terminal tab.  

**Step 2.** Execute the following command and hit return:  

**💡Insights:**  
❖ The command will use the previous Meterpreter session that was opened as part of the RCE exploit that we performed in the previous task to deliver a privilege escalation exploit  
❖ Once the second exploit is executed, that will open additional Meterpreter reverse connection with elevated permissions.  
❖ We will use that session to perform Post Exploitation things.  

> resource 03-priv-escalation.rc  

<img width="1392" height="699" alt="image" src="https://github.com/user-attachments/assets/e58bd2b6-8902-4794-b334-4be42ce3fde9" />  

**Step 3.** Now we have escalated our privileges on the remote system. Next, let’s run post exploitation attacks by executing:  

> resource 04-post-exploitation.rc  

<img width="1394" height="710" alt="image" src="https://github.com/user-attachments/assets/514d6849-1221-4c6b-920f-4b1c2e454cb4" />  

**Step 4.** This command execution will be rather long as it executes many commands such as the following:  
     i) Credential Dumping
     ii) Windows Hash dumping
     iii) Getting Clipboard data of the Windows Client
     iv) Uploading psexec and netcat binaries to C:\\windows\\system32
     v) Run Metasploit persistence modules to set up persistence access to the WIndows Client.
     vi) Data collection and exfiltration
     vii) Lateral Movement
     viii) Setting up Command and Control
     ix) Adding a secret Local user

**Step 5.** Once the command successfully completes, all the post exploitation steps are complete. You can optionally scroll through the command output to see the steps performed by the resource script and the output of the commands.  

**Step 6.** As part of the Post Exploitation, we executed a persistence shell that connects back to the attacker via Netcat. After the port exploitation is complete, within the Attacker VM Terminal tab, navigate to the netcat listener tab to see that you now have a windows reverse shell.  

> nc -l -p 1337

<img width="1396" height="719" alt="image" src="https://github.com/user-attachments/assets/46d460ee-7690-43e9-b038-3c115bafb822" />  

#### Cortex XDR Part 2

**Step 7.** Head back to the **Cortex XDR tab** in CloudShare. **Refresh** the incident page and now you should see incidents related to the exploit which we just performed. Check the checkbox that says **Include Incident Insights.**  

<img width="1912" height="1191" alt="image" src="https://github.com/user-attachments/assets/b8600779-6947-43b7-b953-0565270e765d" />
<img width="1915" height="1197" alt="image" src="https://github.com/user-attachments/assets/9ff96aa1-d57d-44f7-b3fe-0dcb404af426" />

**Step 8.** You can see that XDR has detected and categorized various attacks performed by the attacker based on the MITRE attack tactics and techniques. Click on various different MITRE tactics to see the alerts that are under that category. For example, if you clicked on Privilege Escalation, you can see the various alerts that fall under those categories.

<img width="1917" height="1199" alt="image" src="https://github.com/user-attachments/assets/56d95fb8-2c06-4a02-8789-9a5a9fb30b86" />
<img width="1917" height="1199" alt="image" src="https://github.com/user-attachments/assets/86b30ceb-c50b-45a4-aff7-6329ffe26322" />

**Step 9.** Click on the **Overview tab** to return to the overview section. If you then click on the **Persistence** MITRE tab, you can see the persistence tactics that are used by the attacker.  

<img width="1919" height="1199" alt="image" src="https://github.com/user-attachments/assets/c5cf01d7-f37d-4d0b-96d5-807944530fee" />

**Step 10.** Click on the **Overview tab** to return to the overview section. If you then click on the **Command and Control** MITRE tab, you can see the Command and Control related alert. Similarly, feel free to explore various different MiTRE Tactics and Techniques.

<img width="1919" height="1193" alt="image" src="https://github.com/user-attachments/assets/f33a98dd-141a-46ec-9e8e-2322e76e8381" />

### Task 3 - CodeInject: Linux Spring Framework Exploit

**Complexity:** Easy  
**Scenario:**  
     ● You have successfully installed a Cortex XDR agent on Linux and you want to see it in action.  
     ● The Victim is using a specific version of Spring Cloud Function which is vulnerable to remote code execution (CVE-2022-22963) without any user interaction.  
     ● For this scenario, we have set the XDR protection mode to DETECT AND ALERT. This is done to showcase the capabilities of XDR.
**Key takeaways:**  
     ● Cortex XDR ability to protect from Remote Code Exploitation on Linux Servers. 

#### Liunx Clinet Part 1

**Step 1.** Click the **Linux Client** tab. Run the following shell script to ensure that all the XDR services are running and the latest contents and configuration are downloaded from the XDR tenant. Since the XDR installation script has changed the hostname of this VM, a reboot is also required, which this script will perform after it runs the necessary checks.  

**Step 2.** Once the script is executed and if all the checks pass and the Linux Client is rebooting, your SSH session will be lost. At this point, switch over from SSH to CON using CloudShare controls.  

**Step 3.** If the checks are unsuccessful, wait for a few minutes before re-running the script to check the status again.  

**Step 4.** Once the Linux Client comes back from reboot, you can switch over from CON back to SSH. Once you do that, you should automatically be logged into the Linux Client. After a reboot, allow a couple of minutes for the services to startup.If you are prompted for login credentials when you switch to SSH, switch to CON and then again to SSH. When on SSH, CloudShare should log you into the VM without needing to enter credentials.  

**Step 5.** Once the Linux Client is rebooted, run the script that you had executed previously to verify that all the
XDR Services are running.  

> sudo bash xdr-status.sh

<img width="1580" height="768" alt="image" src="https://github.com/user-attachments/assets/9103f77b-956c-4132-8457-d56fe4c14355" />

> hostname
<img width="1032" height="677" alt="image" src="https://github.com/user-attachments/assets/2acc34e9-d6aa-4124-a973-37c838b5866c" />

**💡Insights:**  
❖ Palo Alto Networks WildFire is a cloud-delivered malware analysis service that uses data and threat intelligence from the industry’s largest global community.  
❖ This incident is triggered by the malware test file, and you will be able to get more details on this threat. You can use the download button on the upper left to download a copy of this report.  
❖ Close the WildFire Analysis Report. Close the WildFire Analysis Report.  

**Step 6.** Run the following command to determine your Linux Hostname.  

> hostname

**Step 7.** Head over to the XDR CloudShare tab. From the left menu, click on Keyboard > Home to navigate back the XDR Home page


#### Cortex XDR Part 3

**Step 8.** Head over to **Endpoints > All Endpoints.** Here you will see a list of endpoints. Find the endpoint associated with the hostname of your Linux Client. Right click on your endpoint in the list > **Endpoint Data > View Incidents > See incidents in the same tab.** Here, you should see that there are no incidents associated with your endpoint. Do not navigate away from this XDR page within the XDR tab but you can switch back and forth between other CloudShare tabs.  

<img width="1915" height="1193" alt="image" src="https://github.com/user-attachments/assets/1aff8618-ce45-454f-b7b8-1b904f4bbc7b" />
<img width="1919" height="1199" alt="image" src="https://github.com/user-attachments/assets/c8b24e60-d0e7-4dc9-9825-69a410344fe4" />
<img width="1833" height="1171" alt="image" src="https://github.com/user-attachments/assets/bd0dc7b6-d09b-4f3d-913e-d3055052b40b" />

#### Attacker Part 3

**Step 9.** Navigate to the **Attacker VM**. Within the open terminal, click on the **Linux Exploit** tab and hit return.  

> msfconsole -r 01-spring-exploit.rc

<img width="1286" height="735" alt="image" src="https://github.com/user-attachments/assets/746e5b4c-4da3-43d7-89f9-e0d697810266" />

**💡Insights:**  
❖ The command will start the Metasploit program and configure the Attacker VM to listen for incoming connections and serve the **Spring Cloud Function SpEL Injection (CVE-2022-22963) exploit** to the Linux Client  
❖ Once the exploit execution is complete, you should see a Meterpreter session open. This indicates that the exploit was completed successfully and we have obtained the reverse shell on the Linux Client  

**Step 10.** Within the Meterpreter prompt, run the following command to execute post exploitation steps.  

> resource 02-post-exploitation.rc

<img width="1209" height="659" alt="image" src="https://github.com/user-attachments/assets/f569d8e0-50a0-4026-8012-d86340f25598" />  

#### Cortex XDR Part 4

**Step 11.** Once this command completes execution, head back to the Cortex XDR tab in CloudShare. Refresh the incident page and now you should see incidents related to the exploit which we just performed.  
**Step 12.** **Right Click on the Incident > View Incident > View Incident in the Same tab**  

<img width="1911" height="920" alt="image" src="https://github.com/user-attachments/assets/969598dd-12dc-4105-a2dd-6c05570f8401" />

**Step 13.** Click on the **Alert and Insights** to see all the alerts that are part of this Incident. Here you can see that XDR was able to detect and report the exploit.

<img width="1910" height="930" alt="image" src="https://github.com/user-attachments/assets/6b0ff006-63f1-44be-9362-cb3b784eaf76" />

**Step 14.** Click on the **Executions** tab to see the Causality chain.  

<img width="1919" height="1037" alt="image" src="https://github.com/user-attachments/assets/5aefec6b-b19d-4bb9-b9d5-c8d81759d741" />

**Step 15.** Click on **Key Assets and Artifacts** to view the artifacts for this incident.

<img width="1916" height="930" alt="image" src="https://github.com/user-attachments/assets/04de68e5-a8da-4b2d-9315-12cc76474b89" />

## Activity 4: Cortex XSOAR Phishing Email Case Study

**Background:** At the beginning of our previous Cortex XDR activity, we witnessed in real-time the significant threats posed by phishing emails, which can deliver malicious content such as browser exploits and cause substantial damage. In this activity, we will delve into how Cortex XSOAR can enhance your organization's and employees' protection against phishing attacks.  

Phishing emails are particularly hazardous as they not only deliver exploits but also direct users to malicious websites and distribute malware. Given these risks, it is crucial to implement robust measures to protect against phishing attacks. Cortex XSOAR offers advanced automation and orchestration capabilities to streamline and enhance the efficiency, accuracy, and speed of responding to phishing incidents, thereby mitigating the associated challenges effectively.


**In this activity you will:**
     **● Review the setup - email client and phishing email.  
     ● See how Cortex XSOAR can integrate with Mail clients.  
     ● Understand and work with Cortex XSOAR.  
     ● See Cortex XSOAR in action when it comes to Phishing emails and how it can help security team’s response times through powerful automation in the form of XSOAR playbooks.**     

**Note:** This Activity is dependent on Activity 0 > Task 4 and Activity 2.  


### Task 1 - Review the Setup

**Complexity:** Easy  
**Product(s):** Cortex XSOAR  
**Scenario:**  
● A user in your organization has received a Phishing email (same one from previous activity). Review the phishing email from an end user's perspective.  
● You, as a SOC analyst, are responsible for setting up Cortex XSOAR to monitor Phishing emails and
perform automation actions in response to the Phishing emails to protect your employees and
organization.
**Key takeaways:**
     ● Review Phishing email setup  
     ● Configure XSOAR to monitor phishing emails via Mail Listener XSOAR content pack and automate creation of incidents for phishing emails and configure XSOAR to execute a Playbook in response to phishing incidents

**Step 1.** We’ll need to work with the Email client in this activity. You can access the Email Client for this activity
in the following ways:  
     **a)** Via Application Portal  
     **b)** Via Windows Client  
**Step 2.** Cortex XSOAR Credentials: admin/P@lo@lto@123  

**Step 3.** To access the Email client via Application Portal, navigate to **CloudShare > Application Portal** and login (refer to **Activity 0 > Task 3 > Step 1** for credentials to application portal). If you had previously logged in to the Application Portal, you can simply connect to it via the **Application Portal > Connect** to log back in.  

#### Application Portal Part1  
Cortex XSOAR Credentials: (admin/P@lo@lto@123)  
**Step 4.** Once within the **Application Portal**, select the **Webmail** tile to open the email client.  

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

Re: Phishing Investigation - Someone has your password  
From Cortex XSOAR

Hi student@greenmail.com,  
We've concluded that the email you forwarded to us is malicious.  
No further action is required on your part.  
Good job on detecting and forwarding it to us!All the best,  
Your security team  
<img width="1285" height="884" alt="image" src="https://github.com/user-attachments/assets/15ae04aa-e83b-4b5b-9285-84715c97eccc" />  

Re: Phishing Investigation - Someone has your password  
From Cortex XSOAR  
Hi student@greenmail.com,  
We've received your email and are investigating.  
Do not touch the email until further notice.  

Cordially,  Your friendly neighborhood security team
<img width="1273" height="882" alt="image" src="https://github.com/user-attachments/assets/d277c175-d810-470c-9c62-8e0cde040008" />  

### Task 4 - Investigate a Phishing Incident in XSOAR - II
Complexity: Easy  
Product(s): Cortex XSOAR  
Scenario:  
● Simulate a user receiving a sales newsletter which looks suspicious at first glance and as best security practice, the user reports it as Phishing email  
● Understand how XSOAR can help a SOC analyst easily determine if it’s a legitimate email or a Phishing incident with the help of XSOAR and the Phishing playbook  
Key takeaways:  
● Cortex XSOAR Phishing playbook  
● Cortex XSOAR indicators, Artifacts and more.  

#### Docker Workstation Part1
> bash /home/sysadmin/apps/send-mail.sh
<img width="1455" height="881" alt="image" src="https://github.com/user-attachments/assets/c37e638a-6108-4919-a043-7b4a2d200a2b" />  
<img width="1743" height="856" alt="image" src="https://github.com/user-attachments/assets/95b4c011-63ae-4a44-9db5-23d59ac1fffa" />

#### Windows Client Part4
<img width="1502" height="942" alt="image" src="https://github.com/user-attachments/assets/03a5fdcc-6208-4e9c-99a9-9303aef47162" />
<img width="1919" height="1147" alt="image" src="https://github.com/user-attachments/assets/6aa7014a-b4d5-4b4a-b5e7-9a5dfb967b94" />
<img width="1919" height="1136" alt="image" src="https://github.com/user-attachments/assets/0f84ae7c-5905-48a0-b229-2c88ed7656ac" />
#### Cortex XSOAR Part4
<img width="1919" height="948" alt="image" src="https://github.com/user-attachments/assets/ac8ceb80-251f-4aed-8231-9b2d09ec57bd" />
#### Windows Client Part5
<img width="1919" height="1137" alt="image" src="https://github.com/user-attachments/assets/c6350393-3f52-4525-b94f-d3130a3eee29" />
<img width="1919" height="1199" alt="image" src="https://github.com/user-attachments/assets/db42aee2-c062-4b35-aedd-4a527a2fb42f" />

#### Cortex XSOAR Part5
<img width="1919" height="999" alt="image" src="https://github.com/user-attachments/assets/f939b14b-93a3-49ad-b2cc-c2499d045603" />                                    
                                          
#2 Gear Up for Your Next Adventure | Spring Collection 2024 - **Case info**
<img width="1919" height="1041" alt="image" src="https://github.com/user-attachments/assets/00fdab9f-77b7-4b6d-a1e2-5bd1d01ecfa6" />

<img width="1919" height="1085" alt="image" src="https://github.com/user-attachments/assets/1af06959-fbca-430c-9f2c-ecfad5bddb90" />
<img width="1919" height="1081" alt="image" src="https://github.com/user-attachments/assets/ddefc7fc-8d39-4b09-9805-c77fa9c8582b" />


#### Application Portal Part2
<img width="1663" height="889" alt="image" src="https://github.com/user-attachments/assets/8b29f553-e190-469c-aab7-4a3f8b316424" />
<img width="1919" height="1150" alt="image" src="https://github.com/user-attachments/assets/45a37023-20ae-44bc-a2f8-cc1154b2f33e" />

#### Cortex XSOAR Part6
<img width="1919" height="929" alt="image" src="https://github.com/user-attachments/assets/4b4b796b-a014-4828-a0c3-ba293384a71f" />
<img width="1919" height="939" alt="image" src="https://github.com/user-attachments/assets/2006f692-a73a-4432-9e97-7d34f7e3104a" />
<img width="1919" height="950" alt="image" src="https://github.com/user-attachments/assets/70e8f7aa-5fb4-4e14-8edb-f5a0948583f8" />
<img width="1919" height="1048" alt="image" src="https://github.com/user-attachments/assets/a3dfef07-fd15-4cbd-bae1-0e4f6643456d" />
<img width="1919" height="1024" alt="image" src="https://github.com/user-attachments/assets/f75c0c82-47d8-481b-b0b4-0a7cef1b1c05" />
<img width="1919" height="991" alt="image" src="https://github.com/user-attachments/assets/d9e2511e-287b-4871-b047-88d070230150" />

<img width="1919" height="994" alt="image" src="https://github.com/user-attachments/assets/a61fae6a-9b05-4bc2-95f0-49421c71020a" />

Re: Phishing Investigation - Gear Up for Your Next Adventure | Spring Collection 2024  
From Cortex XSOAR  

Hi student@greenmail.com,  
We've received your email and are investigating.  
Do not touch the email until further notice.  

Cordially,  
Your friendly neighborhood security team  
<img width="1432" height="547" alt="image" src="https://github.com/user-attachments/assets/eb74aabd-07df-432e-99b2-a03ffcbc623c" />

Re: Phishing Investigation - Gear Up for Your Next Adventure | Spring Collection 2024  
From Cortex XSOAR  

Hi student@greenmail.com,
We've concluded that the email you forwarded to us is safe. In case you think the verdict is not accurate and the email is suspicious, please contact our SOC team.  
Thank you for your alertness and your participation in keeping our organization secure.

Cordially,  
Your security team  
<img width="1485" height="624" alt="image" src="https://github.com/user-attachments/assets/f8b84d29-dca7-48cd-a921-a1875c6ba1a1" />

## Activity 5 - Introduction to Cortex XSIAM

Cortex XSIAM (Extended Security Intelligence and Automation Management) is an AI-Driven Security Platform designed to help organizations manage their security posture by providing comprehensive visibility across all their data sources including network, cloud, and endpoint environments. In this lab, the user will have limited access (read-only) to an XSIAM cloud tenant. XSIAM is currently only available through the SAAS / Cloud model. 

Key features of XSIAM include:  
● Security Analytics - XSIAM uses AI and ML algorithms for behavioral analysis, identifying patterns and trends in large volumes of data that could indicate an emerging threat.  
● Threat Intelligence - The platform applies ML algorithms to analyze threat intelligence data, which helps in identifying patterns and trends that may indicate an emerging threat.  
● Automated Response - Cortex XSIAM uses AI-powered automation to respond to threats in real-time, reducing the need for human intervention.  
● Predictive Analytics - Cortex XSIAM leverages ML algorithms to analyze historical data and predict potential threats, helping organizations proactively protect against future attacks.  
● Continuous Learning - The machine learning algorithms in Cortex XSIAM continuously learn from new data and adjust their models, thereby improving the platform’s accuracy and effectiveness over time.  
The Cortex XSIAM technology merges the following security products into a single cohesive experience. It can autonomously handle an enormous number of alerts and allows analysts to perform most of their work from within a single product.  
● SOAR: The SOAR functionality of Cortex XSIAM helps analysts to automate processes and tedious tasks, perform first touch on alerts, and reduce false positives. It automatically remediates and unifies disparate tools into a single pane of glass.  
● EDR: The EDR functionality of Cortex XSIAM helps analysts gain visibility into endpoints and other devices within a SOC. This functionality protects endpoints against malware, exploits, ransomware, and more. It also offers real-time ability to isolate infected hosts and perform telemetry to identify root causes.  
● ASM: The ASM functionality of Cortex XSIAM offers real-time monitoring of attack surfaces.  
● SIEM: The SIEM functionality of Cortex XSIAM helps analysts to ingest logs, normalize logs, create rules for detection, run rules against logs, stitch logs, and create alerts for third-party systems.  

### Task 1 - Cortex XSIAM Command Center  
Complexity: Easy  
Scenario: Overview of the Command Center  
Key Takeaways:  
● The Command Center gives you a complete overview of security operations.  
● From this screen, analysts can monitor ingested data sources, track security metrics and see how many alerts have resulted in security incidents.  
● Analysts can also see how many incidents have been automatically resolved by XSIAM so they can focus on the ones that need attention.  

#### Cortex XSIAM Part1
<img width="1919" height="1199" alt="image" src="https://github.com/user-attachments/assets/ca951dbe-c414-4082-8a57-8965afa321d0" />

<img width="1919" height="1199" alt="image" src="https://github.com/user-attachments/assets/5d4066c4-a05b-4e74-837b-fef45aeaa383" />
<img width="1919" height="1199" alt="image" src="https://github.com/user-attachments/assets/b10ab49c-c84e-4d35-8d34-46d95d3ff0ec" />

<img width="1919" height="934" alt="image" src="https://github.com/user-attachments/assets/8392f6af-efa7-4566-b23a-a0541aaf0570" />



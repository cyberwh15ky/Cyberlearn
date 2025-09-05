Which two attributes are required of endpoint protection in an Enterprise environment? (Choose two.)  
 - Redundancy  
 - **Scalability**  
 - Access speeds  
 - **Flexibility**  
 - Positive user experience

**Wanderlust Travel** has decided to adopt modern endpoint protection. What are two reasons why **traditional endpoint protection** fails to protect endpoints? (Choose two.)  
 - Adaptive malware is able to evade detection
 - **Known malware is too numerous to block**
 - Sensitive data requires encryption
 - **Customized malware is designed against existing flaws**
 - Common attack vectors such as infected USB drives aren’t blocked

**Wanderlust Travel** wants it’s analysts to understand different types of endpoint protection.  
Which of the following types of endpoint protection wraps a protective virtual barrier around vulnerable processes while they’re running?  
 - Data loss prevention  
 - Container-based endpoint protection  
 - **Anti-virus and anti-malware endpoint protection**  
 - Application control

**Wanderlust Travel** is considering modern endpoint protection because of weaknesses in traditional endpoint protection.  
Which two options are weaknesses of traditional endpoint protection? (Choose two.)  
 - Noticeable performance degradation  
 - **Range of operating systems**  
 - **Slow countermeasure response**  
 - Difficulty in deployment  
 - Poor track record with known malware  

Which of the following is one reason why a security operation center would collect logs?  
 - Identify waste  
 - **Collect as much information as possible**  
 - Storage costs  
 - Determine attribution  

Which two options are components of endpoint agents? (Choose two.)  
 - **Packet filtering**  
 - **Policy enforcement**  
 - Content filtering  
 - VPN support  
 - Quarantine and remediation 

**Wanderlust Travel** is trying to decide how best to protect their endpoints.  
Which of the following describes a product designed to only permit specifically allowed software to run on the endpoints?  
 - Application approval  
 - Administrative control  
 - **Approved application software**  
 - Application whitelisting  

Endpoint protection can negatively affect Wanderlust travel if they choose the wrong product.  
Which of the following is a risk associated with endpoint protection?  
 - Negative impact on user productivity  
 - Customer satisfaction  
 - Inaccessible audit trails  
 - **Overly restricted network segmentation**  

Which of the following describes a process conducted by a specialized team responsible for monitoring for cybersecurity threats and responding to incidents  
 - An event  
 - **An incident**  
 - A breach  
 - An investigation  

**Wanderlust Travel** has tasked its analysts with understanding **Cortex XDR**.  
Which of the following describes widgets that summarize information about endpoints in graphical or tabular format  
 - **Dashboard**  
 - Threat Intelligence  
 - Incident Response  
 - Alerts  


#######################################################################

What is the primary purpose of antivirus software in traditional endpoint security?  
 - **Detecting and removing known malware files**  
 - Preventing unauthorized applications from running  
 - Analyzing network traffic for malicious activity  
 - Identifying behavioral anomalies on endpoints  

What is a significant challenge faced by traditional anti-malware and antivirus software in detecting new threats?  
 - Inability to scan web-based content  
 - **The long average time from infection to detection of malware "in the wild**  
 - Incompatibility with modern operating systems  
 - Management of endpoint agents  

Which two factors contribute to the limitations of traditional signature-based antivirus solutions? (Choose two.)  
 - Slow countermeasure response  
 - **Ability to mutate and evade detection**  
 - Wide window of attack opportunities  
 - **Susceptibility to evasion**  
 - Noticeable performance degradation  

What are three drawbacks of the container-based approach in endpoint protection? (Choose three.)  
 - **Requires significant computing resource overhead**  
 - **Attacks can circumvent or disable container-based protection**  
 - **Limited protection for proprietary or industry-specific software**  
 - Provides effective protection against all types of malware  
 - Easily integrates with various applications  

What is the primary objective of application allow listing in traditional endpoint security?  
 - Detecting behavioral anomalies in applications  
 - Preventing the spread of malware from infected endpoints  
 - **Allowing only approved applications to run on endpoints**  
 - Analyzing network traffic for malicious activity  

#####################################################

Modern Endpoint Security  
Endpoint detection and response (EDR)  
Extended detection and response (XDR)  
Endpoint protection platform (EPP)  
User behavior analytics (UEBA)  

What Are Endpoints? (什麼是終端點？)  
An endpoint is a remote computing device that communicates back and forth with a network to which it is connected. This includes laptops, smartphones, tablets, servers, workstations, desktops, and Internet of Things (IoT) devices. Endpoints are key vulnerable points of entry for cybercriminals. (終端點是一種遠端計算裝置，它與所連接的網絡進行往返通信。這包括筆記本電腦、手機、平板電腦、伺服器、工作站、桌面電腦以及物聯網（IoT）裝置。終端點是網絡犯罪分子關鍵的脆弱進入點。)  

<img width="1693" height="284" alt="image" src="https://github.com/user-attachments/assets/790353d5-67dc-4f9e-8f03-b222af3c1f5b" />

Common Objectives for Targeting Endpoints (目標端點的常見目標)  
Endpoints are where attackers execute code and exploit vulnerabilities, and endpoints contain assets to be encrypted, exfiltrated, or leveraged. Endpoints are becoming increasingly susceptible to cyberattacks as organizational workforces become more mobile and users connect to internal resources from off-premises endpoints all over the world. The following are three common objectives for targeting endpoints: (端點是攻擊者執行代碼和利用漏洞的地方，端點也包含要加密、洩漏或利用的資產。隨著組織工作人員的移動性增加，用戶從全球各地的非本地端點連接到內部資源，端點對網絡攻擊的敏感性也日益增加。以下為針對端點的三個常見目標：)  

Use as an Entry/Exit Point (將用做進出點)  
Use an endpoint as an entry and exit point to access high-value assets and information on an organization’s network. (將終端點用做進入和離開點，以存取組織網絡上的高價值資產和資訊。)  

Access Assets (存取資產)  
Access assets on the endpoint to exfiltrate data or hold the endpoint hostage, either for ransom or purely for disruption. (在終端點存取資產以洩漏數據或將終端點當作人質，無論是為了勒索還是純粹為了干擾。)  

Take Control (掌握控制權)  
Take control of the device and use it in a botnet to execute a Denial of Services (DoS) attack. (掌握設備，並利用它加入僵尸網絡以執行服務拒絕攻擊（DoS）)  



Endpoint Detection and Response (終端偵測與反應)  
Endpoint detection and response (EDR) refers to tools used to detect and investigate threats on endpoint devices. EDR tools provide detection, analysis, investigation, and response capabilities. (終端偵測與反應（EDR）是指用於偵測和調查終端設備上威脅的工具。EDR工具提供偵測、分析、調查和反應功能。)  

As endpoints have become more vulnerable targets for adversaries, EDR has emerged as a critical endpoint security tool. With trends like IoT and the increase in mobile and remote workers, endpoints have become popular entry points for cybercriminals to launch sophisticated attacks on individuals or organizations. Click the tabs for more information about the three key components of EDR. (隨著終端點對敵對者的脆弱性增加，終端點防護解決方案（EDR）已經成為一項關鍵的終端點安全工具。隨著如物聯網（IoT）和移動及遠端工作者數量的增加，終端點已經成為網絡犯罪分子發動複雜攻擊個人或組織的流行入口。點擊標籤以獲取有關EDR三個關鍵組成部分的更多信息。)  

Detection (偵測)  
EDR tools monitor events generated by endpoint agents to look for suspicious activity. Alerts that EDR tools create help security operations analysts identify, investigate, and remediate issues. (EDR工具監控終端代理產生的事件，以尋找可疑活動。EDR工具所產生的警報幫助安全運作分析師辨識、調查和修復問題。)  
Key detection capabilities of EDR include: (EDR 的關鍵偵測功能包括：)  
 - Aggregation of endpoint data (終端數據匯聚)  
 - Malware analysis (惡意軟體分析)  
 - Behavioral analysis, or the ability to connect a chain of seemingly benign events to uncover suspicious behavior (行為分析，或將一系列看似無害的事件連結起來，以揭露可疑行為的能力)  
 - Data correlation and enrichment (資料關聯與豐富化)  
 - Correlation of related alerts into incidents (相關警報事件之關聯)  
 - Prioritization based on the confidence and severity of incidents (基於事件的信心和嚴重性進行優先級排序)  

**Investigation** (調查)  
EDR tools collect telemetry data on suspicious activity and may enrich that data with other contextual information from correlated events. (EDR工具會收集可疑活動的遥测數據，並可能從相關事件中添加其他背景資訊來豐富這些數據。)  
Key investigation capabilities of EDR include: (EDR關鍵調查功能包括：)  
 - Querying activity across multiple cybersecurity tools, including messaging, web, endpoint, and network. (查詢多種資安工具的活動，包括通訊軟體、網頁、終端點和網路。)  
 - Investigation tools that provide an alert management workflow integrated with ticketing systems to enable incidents to be assigned, transferred, annotated, and resolved (提供與票務系統整合的警報管理流程的調查工具，以實現事件的指派、轉移、標記和解決)  
 - Click-down attack chain visualization tools allow investigators to pivot (點擊下擊攻擊鏈視覺化工具允許調查人員進行轉移)  

**Response** (回應)  
EDR is instrumental in shortening response times for incident response teams through the detection and investigation functions. (EDR在通過偵測和調查功能，對應急回應小組縮短回應時間方面具有重要作用。)  
Key response capabilities of EDR include: (EDR 的關鍵回應功能包括：)  
 - Automated, integrated analysis with a sandbox (自動整合的沙盒分析)  
 - Remediation, including network isolation, file quarantine, file removal, reimaging, process killing, and behavior blocking (修復措施，包括網絡隔離、文件隔離、文件刪除、重映像、終止進程和行為阻斷)  
 - Automated response and remediation workflows based on policies or predefined playbooks (基於政策或預設操作手冊的自動回應和修復工作流程)  


Why Use XDR?
Due to the different types of cyberattacks and the weaknesses of traditional antivirus systems, modern cyberattacks have targeted systems and end users alike. Plus, antivirus applications can be bypassed, especially with PowerShell exploits. EDR and XDR can answer many questions about cyberattack-related activities observed on a system.

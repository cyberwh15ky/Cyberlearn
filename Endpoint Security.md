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

**Extended Detection and Response** (擴展偵測與反應)  
Extended detection and response (XDR), an evolution of EDR, is a new approach to threat detection and response. The “X” stands for any data source, such as network, cloud, and endpoint sensors. (擴展偵測與反應（XDR），為EDR的演進，是一種新的威脅偵測與反應方法。‘X’代表任何數據來源，例如網絡、雲端和終端感應器。)  

**The Evolution of EDR** (EDR的演進)  
Traditional EDR tools focus only on endpoint data, providing limited visibility into suspected threats. EDR solutions can result in missed detections, increased false positives, and longer investigation times. These shortcomings compound security teams' challenges, including event overload, skills shortages, narrowly focused tools, a lack of integration, and too little time. (傳統的EDR工具僅僅關注終端點數據，對疑似威脅的視野有限。EDR解決方案可能導致漏報、誤報增加以及調查時間延長。這些不足加劇了安全團隊的挑戰，包括事件過載、技能短缺、工具聚焦過於狹隘、缺乏整合以及時間不足。)  

XDR systems use heuristics, analytics, modeling, and automation to combine and derive insight from these sources, increasing security visibility and productivity compared to siloed security tools. The result is simplified investigations across security operations that reduce the time it takes to discover, hunt, investigate, and respond to any threat. (XDR 系統利用規則、分析、建模和自動化來結合並從這些來源中獲取洞察，與孤立的保安工具相比，增加保安可見性和生產力。結果是在保安運作中簡化調查，減少發現、搜尋、調查和應對任何威脅所需時間。)  

**Why Use XDR?** (為何使用XDR？)  
Due to the different types of cyberattacks and the weaknesses of traditional antivirus systems, modern cyberattacks have targeted systems and end users alike. Plus, antivirus applications can be bypassed, especially with PowerShell exploits. EDR and XDR can answer many questions about cyberattack-related activities observed on a system. (由於不同類型的網路攻擊以及傳統防毒系統的弱點，現代網路攻擊已經針對系統和終端用戶。此外，防毒軟體可以被竊取，特別是使用PowerShell漏洞。EDR和XDR可以回答關於系統上觀察到的網路攻擊相關活動的許多問題。)  


**When did the attack happen?** (攻擊是什麼時候發生的？)  
Exact date and time of the incident. (事件的確切日期和時間。)  
**Which attack methods were used?** (使用了哪些攻擊方法？)  
Web-based, email-based, external devices (USB), network-based, etc. (網基的、電子郵件基的、外部設備（USB）、網絡基的等。)  
**Why was the attack successful?** (為什麼攻擊會成功？)  
Missing updates, wrong or missing configurations, outdated application usage, etc. (缺少更新、錯誤或缺失的設定、過時的應用程序使用等。)  
**What was the attack type?** (這是攻擊的類型嗎？)  
Local, remote, malware, ransomware, zero day, etc. (本地、遠端、惡意軟體、勒索軟體、零日漏洞等。)  
**What/Who were the affected systems or organizations?** (受影響的系統或組織是什麼/誰？)  
Administrative group, finance users, CRM servers, database systems, etc. (行政團隊、財務用戶、CRM伺服器、數據庫系統等。)  

**XDR Differentiators** (XDR區別要素)  
The following table lists the EDR/XDR differentiators and their capabilities. (以下表格列出了EDR/XDR的區別要素及其功能。)  
<img width="1550" height="697" alt="image" src="https://github.com/user-attachments/assets/9ace6e95-e8af-458d-92f8-629334b32fc4" />

**Endpoint Security** (終端安全)  
Endpoint security describes the tools, products, and techniques designed to protect user devices—such as desktop computers, laptops, smartphones, and tablets—and ensure the security of individual access points to an organization’s network and sensitive data. (終端安全描述了為了保護用戶設備（如桌電腦、筆記型電腦、智慧型手機和平板電腦）以及確保組織網絡和敏感數據的個別訪問點安全而設計的工具、產品和技術。)  

**Why Is Endpoint Security Important?** (為什麼終端安全重要？)  
As remote and mobile workers and bring your own device (BYOD) policies become more commonplace, the number of vulnerable entry points across an organization grows, extending its protection perimeter. Organizations must ensure that all internet-enabled devices with access to their internal data are protected against cyberattacks. (隨著遠端工作和移動工作人員以及自帶設備（BYOD）政策越來越普遍，組織內的脆弱入口點數量增加，擴大了其保護範圍。組織必須確保所有能夠訪問其內部數據的互聯網設備都能夠防範網絡攻擊。)  

**Endpoint Protection Platform** (終端保護平台)  
“Endpoint security” is often used interchangeably with “endpoint protection platform,” or EPP, a term coined by Gartner. This platform sits on endpoint devices and secures them against cyberattacks using a comprehensive approach to combat sophisticated malware. (終端安全常與「終端保護平台」，或稱EPP（由Gartner創造的術語）相互交替使用。此平台設置在終端設備上，並採用全面的方法來對抗複雜惡意軟體，以保護終端設備免受網絡攻擊。)  


**EPP**  
EPPs use multiple techniques for prevention, including static analysis to evaluate potential malware based on file inspection, heuristics rules to block exploits, and behavioral analysis to evaluate file maliciousness based on the functions they perform. (EPPs 運用多種預防技術，包括基於檔案檢查評估潛在惡意軟體的靜態分析、用於阻擋漏洞的歸納規則，以及基於檔案執行功能的行為分析來評估檔案的惡意性。)  

**EDR**  
EDR tools have emerged as a complement to EPP tools, allowing security teams to investigate and mitigate threats their prevention tools may have missed. An endpoint security toolkit may also include technologies such as endpoint management (which includes asset, vulnerability, patch, and mobile device management), encryption, data loss prevention, and identity and access management. These tools can be used alone or bundled with other EPP products for more comprehensive protection. (EDR工具已經成為EPP工具的補充，允許安全團隊調查和減緩他們的預防工具可能遺漏的威脅。終端安全工具包也可能包括終端管理（包括資產、漏洞、補丁和移動設備管理）、加密、數據損失防止以及身份和訪問管理技術。這些工具可以單獨使用，也可以與其他EPP產品打包，以提供更全面的保護。)  

**Key Capabilities of an EPP** (EPP之關鍵功能)  
The best EPP offerings tend to be managed in the cloud so that endpoint activity can be monitored continuously, and issues can be resolved automatically, regardless of the network to which the endpoint device is connected. The following are the key capabilities of an EPP. (最佳的EPP提供項通常會在雲端進行管理，以便持續監控終端點活動，並能自動解決問題，不論終端設備連接到哪個網絡。以下為EPP的關鍵功能。)  

**Block Known and Unknown Malware** (阻擋已知與未知惡意軟體)  
 - Blocks known malware and viruses based on signatures, hashes, or other methodologies (基於簽名、哈希或其他方法阻擋已知惡意軟體和病毒)  
 - Blocks unknown malware based on static file analysis, emulation, behaviors, and techniques (基於靜態檔案分析、模擬、行為和技術阻擋未知惡意軟體)  

**Accurate Detection** (精準偵測)  
 - Does not depend on signatures as the sole method for malware detection (不僅僅依賴於簽名作為惡意軟體偵測的唯一方法)  
 - Powers actions through threat intelligence (透過威脅情報來執行動作)  
 - Provides anti-exploit and anti-ransomware protection (提供防漏洞和防勒索軟件保護)  

**Behavioral Analyti** (行為分析)  
 - Features hardening, such as application control, or another feature that reduces the attack surface (功能強化，例如應用程式控制，或另一項減少攻擊面的功能)  
 - Features authentication enhancements such as activity monitoring (behavioral biometrics) (具有如活動監控（行為生物識別）等認證功能強化)  

**Effective Management** (有效管理)  
 - Provides an effective management console (提供有效的管理控制台)  
 - Provides cloud-based sandboxing for deep inspection and second-opinion analysis (提供基於雲端的沙盒技術，以進行深入檢查及第二意見分析)  
 - Provides a lightweight agent to minimize performance impact (提供輕量級代理以最小化性能影響)  
 - Provides a single agent for both EPP and EDR (提供單一代理以供EPP和EDR使用)  

**Endpoint Security Strategies** (終端安全策略)  
For decades, organizations have heavily relied on antivirus programs to secure endpoints. However, traditional antivirus programs can no longer protect against today’s sophisticated threats. (數十年來，組織們重度依賴防毒軟體來保護終端點。然而，傳統的防毒軟體已無法防範今日複雜的威脅。)  

The following are the endpoint security strategies: (以下為終端安全策略：)

**Modern Endpoint Security** (現代終端安全)  
Modern endpoint security solutions focus more on behaviors than signature. They incorporate a broader array of capabilities, such as antivirus, exploit protection, EDR, analytics, and device control. (現代終端安全解決方案更注重行為而非簽名。它們整合了更廣泛的功能，例如防病毒、漏洞保護、EDR、分析與裝置控制。)  

**Enterprise Endpoint Security** (企業終端安全)  
Enterprise endpoint security strategies combine EPP and EDR solutions with cloud and network security tools, such as network traffic analysis (NTA), to gain visibility into the growing proportion of network-connected devices that are “unmanaged” (meaning they do not or cannot have endpoint agents installed), such as many IoT devices. (企業終端安全策略結合EPP和EDR解決方案，以及雲端和網絡安全工具，如網絡流量分析（NTA），以獲得對日益增多的「未管理」網絡設備的視野，這些設備（意味著它們沒有或不能安裝終端代理）如許多物联网設備。)  

**Comprehensive Endpoint Security** (全面終端安全)  
The most powerful and comprehensive endpoint security solutions (often included in the XDR category) can gather and correlate this data centrally and perform local analysis on individual endpoints. (最強大且全面的終端安全解決方案（常被包含在XDR類別中）能夠集中收集和關聯這些數據，並對個別終端進行本地分析。)  

**Advanced Endpoint Security** (先進終端安全)  
An advanced endpoint security solution should prevent known and unknown malware and exploits, incorporate automation to alleviate security team workloads and protect and enable users without impacting system performance. (先進終端安全解決方案應該預防已知和未知的惡意軟件和漏洞，結合自動化以減輕安全團隊的工作負擔，並在不影響系統性能的情況下保護和允許用戶使用。)  

**User and Entity Behavior Analytics** (用戶與實體行為分析)  
User and entity behavior analytics (UEBA), or user behavior analytics (UBA), is a type of cybersecurity solution or feature that discovers threats by identifying activity that deviates from a normal baseline. (用戶與實體行為分析（UEBA），或稱為用戶行為分析（UBA），是一種安全防範解決方案或功能，透過識別與正常基準偏差的活動來發現威脅。)  

UEBA monitors and detects unusual activity on computer networks, including unauthorized data access or suspicious behavior. SIEM platforms commonly identify potential security threats by aggregating event logs and security alerts. They may not effectively detect advanced or unknown threats that don't involve malware, such as credential theft or attackers who have previously gained network access. (UEBA 監控並偵測電腦網絡上的不尋常活動，包括未授權的數據存取或可疑行為。SIEM 平臺通常通過匯總事件日誌和安全警報來識別潛在的安全威脅。它們可能無法有效偵測不涉及惡意軟件的先進或未知威脅，例如憑證盜取或先前已獲得網絡訪問權的攻擊者。)  

**The Differences Between UEBA and NTA Solutions** (UEBA與NTA解決方案的差異)  
Click the tabs for more information about how UEBA and NTA solutions work and the differences between them. (點擊標籤以取得更多有關UEBA和NTA解決方案如何運作以及它們之間差異的資訊。)  

**Log-Centric Solutions** (以日志為核心的解決方案)  
UEBA solutions are typically packaged or embedded in traditional security products, such as cloud access security brokers and identity governance and administration systems. UEBA solutions use live and historical data and machine learning to develop a baseline of standard activity from network users and other entities (e.g., hosts, applications, data repositories, network traffic). (UEBA解決方案通常會打包或內嵌於傳統安全產品中，例如雲存取安全代理和身份治理與管理系統。UEBA解決方案利用實時和歷史數據以及機器學習來建立網絡用戶和其他實體（例如，主機、應用程序、數據存儲庫、網絡流量）的標準活動基線。)  

After establishing this baseline, UEBA solutions apply analytics methods (e.g., simple statistics, pattern matching, rules that leverage signatures) to look for anomalies in traffic patterns that indicate potentially suspicious or malicious activity. For UEBA solutions to perform behavior analytics effectively, a company must first have a robust and integrated dataset for the machine-learning tools. (在建立這個基準後，UEBA解決方案會應用分析方法（例如，簡單統計、模式匹配、利用簽名規則的規則）來尋找交通模式中的異常，這些異常可能表示可疑或惡意活動。為了讓UEBA解決方案有效地進行行為分析，公司必須首先擁有一個強大且整合的數據集供機器學習工具使用。)  

**Network-Centric Solutions** (網絡中心解決方案)  
NTA solutions use machine learning, advanced analytics, and rule-based detection to monitor and analyze all traffic and flow records on enterprise networks. NTA solutions use this information to identify potential attacks, insider abuse, suspicious activity, and malware. These solutions monitor and analyze all north-south traffic across the enterprise perimeter and all east-west communications from network sensors. (NTA解決方案使用機器學習、先進分析法和基於規則的偵測來監控和分析企業網絡上所有的流量和流量記錄。NTA解決方案利用這些資訊來識別潛在攻擊、內部人員濫用、可疑活動和惡意軟體。這些解決方案監控和分析企業周邊所有的南北流量以及從網絡感應器來的所有東西通訊。)  

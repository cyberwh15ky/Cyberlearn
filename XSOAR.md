##### Settings > Integrations > Instances > Mail Listener v2 > Settting
<img width="869" height="425" alt="{5D46C937-070F-4113-AC10-B2A3A98E6FAA}" src="https://github.com/user-attachments/assets/abfe3285-016b-4faa-9b74-d131d6782ac7" />

<img width="754" height="446" alt="{98F74753-4BA2-4735-8D2D-A6A15939D509}" src="https://github.com/user-attachments/assets/f2f5831d-3e0f-4ca5-bd8b-c9fd0f5da2bf" />

<img width="754" height="447" alt="{FB82F089-E4C1-4516-86CB-8DA65A343622}" src="https://github.com/user-attachments/assets/00270cbb-bc55-4212-8da2-8593182cbdc9" />

<img width="754" height="449" alt="image" src="https://github.com/user-attachments/assets/65d911c7-4dda-4606-b426-7a501d108f64" />


##### Click Test to validate that the tests are successful. Click Save & Exit.  
<img width="755" height="451" alt="{E364D7C6-A6AE-42BC-8AE6-ED13B4F4AA4F}" src="https://github.com/user-attachments/assets/5dfcd0ee-6638-4a52-8d53-386fdb7127e4" />
<img width="633" height="438" alt="{0A3D773C-386B-4AA0-B813-A37DDA3B01AF}" src="https://github.com/user-attachments/assets/6fdae56b-a8e4-4830-bff0-ddf71c99e6c0" />
<img width="894" height="317" alt="{204FA046-4D62-4214-A167-9B6D5FFBD288}" src="https://github.com/user-attachments/assets/8a4bb18e-b23a-4340-aec3-73f22016ce67" />




##### FYI
a) Incident type: The value is currently set to Phishing. This means that the incidents that are created by this instance are classified as Phishing and in response to Phishing incident type, relevant automations are run by XSOAR  

b) Mail Server Hostname/IP address: This is the IP address of our self hosted mail server in the lab.  

c) IMAP port: This value indicates the IMAP port of our self hosted mail server in lab  

d) username/password: Credentials for our mailbox.  

e) Incoming mail folder: This is the folder within the student email account (student). This indicates that any emails that end up in the Phishing folder are monitored by XSOAR and a corresponding incident is created for each email in the Phishing folder.  

f) First Fetch Time: This corresponds to the oldest email that will be fetched. For example, if it’s set to 1 year, all emails within the past year from the current date, will be fetched.  

g) Incidents Fetch Interval: The frequency at which XSOAR queries the configured mailbox and folder for emails.  




### Case info 
<img width="895" height="486" alt="{CB66A189-8289-4AB4-8E39-B0427D0FBE50}" src="https://github.com/user-attachments/assets/0afc2e81-4732-4c14-9709-7cb34532973c" />

### Investigation
<img width="911" height="489" alt="{A5A2CEF1-564F-465B-8416-6A2A4AA7B55E}" src="https://github.com/user-attachments/assets/07c18473-7bb5-4649-a25d-ce18b4c85810" />
<img width="906" height="441" alt="{3C6DD0B4-7599-4C59-95CA-0654AECFEB46}" src="https://github.com/user-attachments/assets/c128d952-3271-4f39-a643-cf4dd49db2eb" />
<img width="911" height="490" alt="{5936D221-6A79-49D7-92F0-CF00AADBCDDA}" src="https://github.com/user-attachments/assets/88a5d007-c7a0-42ab-9e43-5ee7a8d23ff1" />

### Work Plan
**Playbook for check the phishing**
<img width="904" height="480" alt="{12A5807A-0E2B-4677-AA6E-967D980A0889}" src="https://github.com/user-attachments/assets/831553a4-71ad-4d00-aa2f-12f06f418e44" />

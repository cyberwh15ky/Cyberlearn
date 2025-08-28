Settings > Integrations > Instances > Mail Listener v2 > Settting
<img width="869" height="425" alt="{5D46C937-070F-4113-AC10-B2A3A98E6FAA}" src="https://github.com/user-attachments/assets/abfe3285-016b-4faa-9b74-d131d6782ac7" />

<img width="754" height="446" alt="{98F74753-4BA2-4735-8D2D-A6A15939D509}" src="https://github.com/user-attachments/assets/f2f5831d-3e0f-4ca5-bd8b-c9fd0f5da2bf" />

<img width="754" height="447" alt="{FB82F089-E4C1-4516-86CB-8DA65A343622}" src="https://github.com/user-attachments/assets/00270cbb-bc55-4212-8da2-8593182cbdc9" />

<img width="754" height="449" alt="image" src="https://github.com/user-attachments/assets/65d911c7-4dda-4606-b426-7a501d108f64" />

Click Test to validate that the tests are successful. Click Save & Exit.  

#####FYI
a) Incident type: The value is currently set to Phishing. This means that the incidents that are created by this instance are classified as Phishing and in response to Phishing incident type, relevant automations are run by XSOAR  

b) Mail Server Hostname/IP address: This is the IP address of our self hosted mail server in the lab.  

c) IMAP port: This value indicates the IMAP port of our self hosted mail server in lab  

d) username/password: Credentials for our mailbox.  

e) Incoming mail folder: This is the folder within the student email account (student). This indicates that any emails that end up in the Phishing folder are monitored by XSOAR and a corresponding incident is created for each email in the Phishing folder.  

f) First Fetch Time: This corresponds to the oldest email that will be fetched. For example, if it’s set to 1 year, all emails within the past year from the current date, will be fetched.  

g) Incidents Fetch Interval: The frequency at which XSOAR queries the configured mailbox and folder for emails.  

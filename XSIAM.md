#### IoC
#### PII


## Logs and Retention - Assessment Question 
### Which storage is commonly used but requires an Internet connection?
A: Cloud storage
### Which logs capture actions taken by users or administrators?
A: Audit Log
### What recent technology is used to store logs in a decentralized and tamper-resistant manner?
A: Blockchain
### What may happen if local logs are not captured remotely?
A: Events may be overwritten by log rotation
### Which log retention best practice organizes logs based on their sensitivity and relevance to security investigations?
A: Data classification

### Logging
> A log is a record or entry created by a computer system, software application, network device, or other technology component to capture events,  
> activities, and interactions. Logging refers to the collection of these entries.  

### Retention
> The retention of logs refers to storing log data for a specified period.  
> Retention policies dictate how long logs are retained before they are archived or deleted.  

### Logging
##### Application Logs  
> **Application logs** record information about the behavior and performance of specific software applications. They can include error messages, user interactions, and transaction records.  
> **Application logs** are valuable for diagnosing application issues and optimizing performance.  

##### Audit Logs  
> **Audit logs** capture actions taken by users or administrators, including changes to system configurations, file access, and database operations.  
> **Audit logs** are crucial for compliance and accountability.  

##### Neywork Logs  
> **Network logs** contain data about network traffic, including source and destination IP addresses, ports, protocols, and traffic patterns.  
> **Analyzing network logs** can help identify suspicious or anomalous network behavior.  

##### Security Logs  
> **These logs** record security-related events such as login attempts, firewall activity, intrusion detection alerts, and access control changes.  
> **Security logs** are essential for detecting and responding to security incidents and breaches.  

##### System Logs  
> **System logs** document activities related to the functioning of the operating system and hardware, including error messages, system startup and shutdown events, and hardware failures. 
> **System logs** help administrators maintain system health and troubleshoot problems.


#### Logging Challenges and Issus
The capture of logs for analysis and investigation may entail overcoming certain challenges, typically in system configuration, connectivity, and access permissions. However, the management of logs, once collected, presents its own challenges that warrant careful consideration.

##### Log Rotation
Many systems implement log rotation mechanisms to manage log files efficiently.  
Controlled log rotation may archive or delete older log entries to make room for new entires, while adhering to retention policies.  
If local-device logs are not captured remotely, older events may be overwritten by a system's default log rotation mechanism.  

##### Capacity and Storage
Retaining logs for extended periods can consume significant storage space.  
An organization must balance the need for data retention with available storage capacity.  

##### Privacy Concerns
Retention policies should consider data privacy concerns and the need to protect sensitive information.  
Logs containing personally identifiable information (PII) should be handled carefully and may have shorter retention periods.  


### Log Retention
Log retention is critical to security operations because logs provide historical records of events and activities within the organization.  

#### Collecting Logs from Multiple Sources
Collecting logs from multiple sources may help to identify outages or security attacks that would otherwise not be detected from a single device.  

###### Investigation and Forensics
Retaining logs for an extended period allows organizations to conduct forensic investigations into security incidents and breaches, even if they occurred months or years ago.

###### Compliance
Many industries and organizations are subject to regulations that require specific log retention periods. For example, the Payment Card Industry Data Security Standard (PCI DSS) mandates the retention of certain logs for at least one year.

#### Storing Logs
Logs can be stored for retention in various ways, depending on an organization's needs and infrastructure. The choice of log storage method often depends on factors such as the volume of log data, budget constraints, compliance requirements, and the specific use case.

##### Local Disk
Logs are stored on the local disks of the systems generating the logs. This is the simplest and most common method. However, it may not be suitable for long-term retention, as local storage capacity is limited.  

##### NAS
Network-attached storage (NAS) devices are used to store log data. NAS devices provide a scalable and centralized storage solution, making managing and accessing logs across the organization easier.  

##### CLoud
A popular choice for organizations is to store logs in the cloud using services like Amazon S3, Google Cloud Storage, or Azure Blob Storage. Cloud storage offers scalability, durability, and the ability to access logs from anywhere with an internet connection.

##### Archival System
Long-term log retention often involves archiving logs that are no longer actively used but must be retained for compliance or historical purposes.  

##### SIEM
Security information and event management (SIEM) platforms are designed to collect, store, and analyze log data for security monitoring and compliance. They often include built-in log storage capabilities.  

##### Blockchain
A relatively new method of storing logs is by using blockchain technologies. Organizations may use blockchain technology to store logs in a decentralized and tamper-resistant manner, ensuring log data integrity.  

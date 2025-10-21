CentOS-7 install 方式:
- 
https://ftp.kh.edu.tw/APPL/2016_CentOS/docs/02.CentOS7%E7%9A%84%E5%AE%89%E8%A3%9D.pdf  

CentOS-7 忘記Root：
- 
https://openfind.zendesk.com/hc/zh-tw/articles/5337453431695-CentOS-7-%E5%BF%98%E8%A8%98-root-%E5%AF%86%E7%A2%BC%E5%A6%82%E4%BD%95%E9%87%8D%E8%A8%AD

官方 mirror 多數下架或移到 vault。  
vault.centos.org 的 7.9.2009 路徑已下線並轉到 archives  
。請把 baseurl 改指向 archives 庫存站點。  
-
以 Rocky/Alma 替代來源（需要測試）企業生產環境可考慮：  
- AlmaLinux 8/9  
- Rocky Linux 8/9  
- RHEL（含 RHEL for dev/free subscription）

##### 可用兩個來源：
CentOS Archives（官方最終存檔）：https://archive.kernel.org/centos-vault/7.9.2009/  
Fedora 檔案館（EPEL 等）：https://archives.fedoraproject.org/

##### 數據庫目前狀態：
已失效 [os] http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os&infra=$infra  
已失效 [updates] http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates&infra=$infra  
已失效 [extras] http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=extras&infra=$infra  
已失效 [centosplus] http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=centosplus&infra=$infra  
已失效 database "https://vault.centos.org/8.5.2111"  
已失效 database "https://vault.centos.org/8.5.2111"  
現存可用 database "https://archive.kernel.org/centos-vault/7.9.2009/"  
<img width="895" height="633" alt="image" src="https://github.com/user-attachments/assets/64922893-e9b2-4fc2-9c96-2ba13053b51b" />



操作第一步:(SetUP yum database)
- 
> sudo vi /etc/yum.repos.d/CentOS-Base.repo

> [base]
> name=CentOS-7 - Base
> baseurl=https://archive.kernel.org/centos-vault/7.9.2009/os/$basearch/
> enabled=1
> gpgcheck=1
> gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

> [updates]
> name=CentOS-7 - Updates
> baseurl=https://archive.kernel.org/centos-vault/7.9.2009/updates/$basearch/
> enabled=1
> gpgcheck=1
> gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

> [extras]
> name=CentOS-7 - Extras
> baseurl=https://archive.kernel.org/centos-vault/7.9.2009/extras/$basearch/
> enabled=1
> gpgcheck=1
> gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7


Install Wazuh 方式：
- 
https://medium.com/@mertala/installing-wazuh-server-on-centos-7-61eb53c99ef8  

操作第二部: (Install Wazuh)
###### Let’s update the packages.  
> [admin@localhost ~]$ sudo yum update -y

###### Install the necessary packages for the installation.  
> [admin@localhost ~]$ sudo yum install curl unzip wget libcap

###### Import the GPG key  
> [admin@localhost ~]$ sudo rpm --import https://packages.wazuh.com/key/GPG-KEY-WAZUH

###### Add the repository  
> [admin@localhost ~]$ cat > /etc/yum.repos.d/wazuh.repo << EOF  
> [wazuh]  
> gpgcheck=1  
> gpgkey=https://packages.wazuh.com/key/GPG-KEY-WAZUH  
> enabled=1  
> name=EL-\$releasever - Wazuh  
> baseurl=https://packages.wazuh.com/4.x/yum/  
> protect=1  
> EOF
<img width="806" height="288" alt="image" src="https://github.com/user-attachments/assets/790b138e-17c7-4a7c-8f90-73be3ce4406e" />  

###### Install the Wazuh manager  
> [admin@localhost ~]$ sudo yum install wazuh-manager

#### 如果出現無法 “sudo yum install wazuh-manager” 可以采用如下操作
###### 步驟一：匯入 Wazuh GPG 金鑰  
> [admin@localhost ~]$ sudo rpm --import https://packages.wazuh.com/key/GPG-KEY-WAZUH  
###### 步驟二：建立 Wazuh YUM 套件庫設定  
> [admin@localhost ~]$ sudo tee /etc/yum.repos.d/wazuh.repo > /dev/null <<EOF  
[wazuh]  
gpgcheck=1  
gpgkey=https://packages.wazuh.com/key/GPG-KEY-WAZUH  
enabled=1  
name=Wazuh repository  
baseurl=https://packages.wazuh.com/4.x/yum/  
EOF  
###### 步驟三：清除快取並更新 YUM  
> [admin@localhost ~]$ sudo yum clean all
> [admin@localhost ~]$ sudo yum makecache
###### 步驟四：安裝 Wazuh Manager
> [admin@localhost ~]$ sudo yum install wazuh-manager -y
<img width="827" height="966" alt="image" src="https://github.com/user-attachments/assets/fbdb9b3b-1afa-4224-8159-bb05fd60bfda" />

**如果你還需要 Wazuh API：**  
> [admin@localhost ~]$ sudo yum install wazuh-api -y  
**驗證 API 是否啟動**  
你可以檢查 Wazuh API 是否正在運行：  
> curl -X GET "http://localhost:55000"  
如果你看到 JSON 回應（例如版本資訊），表示 API 正常運作。  

###### 步驟五：啟動服務
> [admin@localhost ~]$ sudo systemctl enable wazuh-manager
> <img width="804" height="107" alt="image" src="https://github.com/user-attachments/assets/4ae10120-db69-4d1d-837a-95e88e3f3fa7" />  

> [admin@localhost ~]$ sudo systemctl start wazuh-manager

> [admin@localhost ~]$ sudo systemctl status wazuh-manager
> <img width="830" height="914" alt="image" src="https://github.com/user-attachments/assets/1951c001-6344-4b1c-9af7-4e51962ec719" />  


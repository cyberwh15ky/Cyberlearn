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



操作第一步:
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


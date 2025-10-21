官方 mirror 多數下架或移到 vault。  
vault.centos.org 的 7.9.2009 路徑已下線並轉到 archives。請把 baseurl 改指向 archives 庫存站點。
-

已失效 database ""  
現存可用 database "https://archive.kernel.org/centos-vault/7.9.2009/"  
-

以 Rocky/Alma 替代來源（需要測試）企業生產環境可考慮：  
- AlmaLinux 8/9  
- Rocky Linux 8/9  
- RHEL（含 RHEL for dev/free subscription）

可用兩個來源：

CentOS Archives（官方最終存檔）：https://archive.kernel.org/centos-vault/7.9.2009/
Fedora 檔案館（EPEL 等）：https://archives.fedoraproject.org/




操作第一步:
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


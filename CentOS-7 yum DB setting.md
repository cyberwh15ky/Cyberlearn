<img width="920" height="90" alt="image" src="https://github.com/user-attachments/assets/96b188b1-0a83-4be9-b3f7-9e40a7fe8e23" />CentOS-7 install 方式:
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

### 整體架構簡化
<img width="914" height="322" alt="image" src="https://github.com/user-attachments/assets/5fdcab71-11d3-4b69-be22-d0ae45968261" />

#### Install Wazuh 方法：
- 
https://medium.com/@mertala/installing-wazuh-server-on-centos-7-61eb53c99ef8  

操作第二部: (Install Wazuh)
###### Let’s update the packages.  
> [admin@localhost ~]$ sudo yum update -y

###### Install the necessary packages for the installation.  
> [admin@localhost ~]$ sudo yum install curl unzip wget libcap  
<img width="838" height="539" alt="image" src="https://github.com/user-attachments/assets/178454fc-df7a-47bb-be37-a3812ac280e9" />  

###### Import the GPG key  
> [admin@localhost ~]$ sudo rpm --import https://packages.wazuh.com/key/GPG-KEY-WAZUH  
<img width="842" height="539" alt="image" src="https://github.com/user-attachments/assets/3cbae6c5-50e4-49f9-b1fd-15f6908da059" />  

###### Add the repository  
> [admin@localhost ~]$ sudo cat > /etc/yum.repos.d/wazuh.repo << EOF  
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

###### Start Wazuh-Manager /// 步驟五：啟動服務  
> [admin@localhost ~]$ sudo systemctl daemon-reload  
> [admin@localhost ~]$ sudo systemctl enable wazuh-manager  
> <img width="804" height="107" alt="image" src="https://github.com/user-attachments/assets/4ae10120-db69-4d1d-837a-95e88e3f3fa7" />  

> [admin@localhost ~]$ sudo systemctl start wazuh-manager  

> [admin@localhost ~]$ sudo systemctl status wazuh-manager  
> <img width="830" height="914" alt="image" src="https://github.com/user-attachments/assets/1951c001-6344-4b1c-9af7-4e51962ec719" />

####  Installing Elasticsearch  
安裝 Wazuh 時需要搭配 Elasticsearch，主要是因為 Wazuh 本身不儲存或搜尋資料，它依賴 Elasticsearch 來處理大量的安全事件與日誌資料。這兩者是互補的：  
<img width="906" height="492" alt="image" src="https://github.com/user-attachments/assets/5016a362-8860-497c-a03e-eeaa9d4f5894" />  

###### Install opendistroforelasticsearch  

> [admin@localhost ~]$ sudo yum install opendistroforelasticsearch  
<img width="944" height="709" alt="image" src="https://github.com/user-attachments/assets/3345ccf1-7d8e-4223-81f7-345071086750" />

###### Configuring Elasticsearch
> [admin@localhost ~]$ curl -so /etc/elasticsearch/elasticsearch.yml https://packages.wazuh.com/resources/4.2/open-distro/elasticsearch/7.x/elasticsearch_all_in_one.yml

###### Run the following commands to add the Wazuh users
> [admin@localhost ~]$ # curl -so /usr/share/elasticsearch/plugins/opendistro_security/securityconfig/roles.yml  https://packages.wazuh.com/resources/4.2/open-distro/elasticsearch/roles/roles.yml  
> [admin@localhost ~]$ # curl -so /usr/share/elasticsearch/plugins/opendistro_security/securityconfig/roles_mapping.yml  https://packages.wazuh.com/resources/4.2/open-distro/elasticsearch/roles/roles_mapping.yml  
> [admin@localhost ~]$ # curl -so /usr/share/elasticsearch/plugins/opendistro_security/securityconfig/internal_users.yml  https://packages.wazuh.com/resources/4.2/open-distro/elasticsearch/roles/internal_users.yml
<img width="924" height="312" alt="image" src="https://github.com/user-attachments/assets/0e8fd54f-2e8e-4f67-8c12-a44f6ee2c06c" />  

###### Remove the demo certificates:
> [admin@localhost ~]$ # sudo rm /etc/elasticsearch/esnode-key.pem /etc/elasticsearch/esnode.pem /etc/elasticsearch/kirk-key.pem /etc/elasticsearch/kirk.pem /etc/elasticsearch/root-ca.pem -f  
<img width="920" height="90" alt="image" src="https://github.com/user-attachments/assets/fdc271f1-3688-4909-9022-8e4bfbeae5e1" />  

###### Download the wazuh-cert-tool.sh
> [admin@localhost ~]$ # curl -so ~/wazuh-cert-tool.sh https://packages.wazuh.com/resources/4.2/open-distro/tools/certificate-utility/wazuh-cert-tool.sh  
> [admin@localhost ~]$ # curl -so ~/instances.yml https://packages.wazuh.com/resources/4.2/open-distro/tools/certificate-utility/instances_aio.yml
<img width="910" height="171" alt="image" src="https://github.com/user-attachments/assets/46837c68-2e95-47e7-b372-9769da632af2" />

###### 執行 Wazuh 官方提供的 憑證產生工具  
> [admin@localhost ~]$ sudo bash ~/wazuh-cert-tool.sh  

如果運行“sudo bash ~/wazuh-cert-tool.sh”的時候 出現 ERROR: no configuration file found.  
就是執行 wazuh-cert-tool.sh 時，缺少必要的設定檔 config.yml  
<img width="857" height="113" alt="image" src="https://github.com/user-attachments/assets/86502013-641c-461c-92d2-59e11e9c669c" />  

解決方法:  
建立一個 config.yml 檔案, 放在與 wazuh-cert-tool.sh 相同的目錄中（通常是 ~/）。

📁 範例 config.yml 結構 Yaml
- 
nodes:
  indexer:
    - name: node-1
      ip: 127.0.0.1
  server:
    - name: wazuh-1
      ip: 127.0.0.1
  dashboard:
    - name: dashboard-1
      ip: 127.0.0.1

###### 建立設定檔：  
> [admin@localhost ~]$ sudo vi /root/config.yml
<img width="710" height="78" alt="image" src="https://github.com/user-attachments/assets/3291fab4-1a4f-4b8d-a462-51bef4a10fa3" />


###### 確認檔案存在：  
> [admin@localhost ~]$ ls ~ | grep config.yml  
<img width="705" height="60" alt="image" src="https://github.com/user-attachments/assets/63217e4d-ecf2-46c2-aba8-e99f66bd3595" />  

###### 目錄建立好 config.yml 就可以執行 "sudo bash ~/wazuh-cert-tool.sh"   
> [admin@localhost ~]$ sudo bash ~/wazuh-cert-tool.sh  
 <img width="812" height="60" alt="image" src="https://github.com/user-attachments/assets/c39c7c50-059f-4d51-aea4-51ad8dd66580" />  
 
###### 驗證檔案  
> [admin@localhost ~]$ head -n 5 wazuh-certs-tool.sh  
<img width="707" height="63" alt="image" src="https://github.com/user-attachments/assets/de086a04-9f30-479e-8f38-c8479ca263ee" />  

⚠️ 注意：檔名在新版叫 wazuh-certs-tool.sh，不是 wazuh-cert-tool.sh（多了一個 s）。  
- Wazuh 在 4.x 版本之後，已經不再單獨維護 wazuh-cert-tool.sh 這個檔案在 GitHub 的 wazuh-installation-assistant 專案裡。  
- 官方現在把憑證工具放在 packages.wazuh.com 的套件倉庫裡，而不是 GitHub raw。  
使用 wazuh-cert-tool.sh 會 顯示“404: Not Found”   

##### 解決方法  

###### 下載最新 wazuh-certs-tool.sh  
> [admin@localhost ~]$ curl -O https://packages.wazuh.com/4.8/wazuh-certs-tool.sh  
> [admin@localhost ~]$ chmod +x wazuh-certs-tool.sh  
<img width="930" height="311" alt="image" src="https://github.com/user-attachments/assets/cedec9bd-41fc-4017-905d-36ea66cce850" />  

###### 驗證檔案  
> [admin@localhost ~]$ head -n 5 wazuh-certs-tool.sh  
> <img width="820" height="167" alt="image" src="https://github.com/user-attachments/assets/f969ad50-81d3-4182-97d8-cbfdfa0d5773" />  

###### 如何操作  
目錄裡已經有 instances.yml，直接執行  
這樣它會自動讀取當前目錄下的 instances.yml，一次產生所有憑證。  
> [admin@localhost ~]$ sudo ./wazuh-certs-tool.sh -A  
> <img width="935" height="286" alt="image" src="https://github.com/user-attachments/assets/823aa93d-e6aa-480b-839b-e2b599a88fea" />  

檢查憑證 被存放 在 “wazuh-certificates” 的目錄  
> [admin@localhost ~]$ sudo ls ./wazuh-certificates/  
> <img width="773" height="150" alt="image" src="https://github.com/user-attachments/assets/8b287dc8-274a-418f-baef-c0aba1c9697d" />

建立目錄並複製憑證到對應服務

新版的 Wazuh 裡，Elasticsearch 已經被替換成 Wazuh Indexer，  
所以工具不會再產生 elasticsearch* 這樣命名的檔案，  
而是用 node-1.pem / node-1-key.pem 來代表 Indexer 節點。  

- node-1.pem / node-1-key.pem → 就是 Indexer (Elasticsearch) 的憑證  
- admin.pem / admin-key.pem → Admin 憑證  
- root-ca.pem / root-ca.key → 根憑證  

###### 在elasticsearch建立wazuh-certif 文件
> [admin@localhost etc]$ sudo mkdir /etc/elasticsearch/wazuh-certif
> [admin@localhost etc]$ sudo ls elasticsearch/
<img width="932" height="166" alt="image" src="https://github.com/user-attachments/assets/a1c9a199-cc7b-4088-b695-0dfd09f9f40f" />


###### Move Elasticsearch file  
> [admin@localhost ~]$ mkdir /etc/elasticsearch/wazuh-certificates/  
> [admin@localhost ~]$ sudo mv ~/wazuh-certificates/node-1* /etc/elasticsearch/wazuh-certificates/  
> <img width="920" height="58" alt="image" src="https://github.com/user-attachments/assets/44b9ad07-68a4-40cd-b9bf-0e4d628370c3" />  

> [admin@localhost ~]$ sudo mv ~/wazuh-certificates/admin* /etc/elasticsearch/wazuh-certificates/  
> <img width="927" height="60" alt="image" src="https://github.com/user-attachments/assets/c2fa0168-74bd-424f-9784-662dd58b902f" />  
 
> [admin@localhost ~]$ sudo cp ~/wazuh-certificates/root-ca* /etc/elasticsearch/wazuh-certificates/    
<img width="925" height="60" alt="image" src="https://github.com/user-attachments/assets/5e4a1e4f-be83-4500-bb7e-cf26e61e24ae" />  

###### 檢查 Move Elasticsearch file 操作是否成功
> [admin@localhost etc]$ sudo ls elasticsearch/wazuh-certificates
<img width="898" height="79" alt="image" src="https://github.com/user-attachments/assets/a6104fd9-228b-4269-812d-b86971c9e548" />

###### Start elasticsearch
> [admin@localhost ~]$ systemctl daemon-reload
> <img width="933" height="194" alt="image" src="https://github.com/user-attachments/assets/b8d0f547-ec9b-4c7e-8353-82badc432505" />

> [admin@localhost ~]$ sudo systemctl enable elasticsearch
> <img width="937" height="482" alt="image" src="https://github.com/user-attachments/assets/4ad3f431-29f0-4a4b-97db-8ea66353f64f" />

###### Elasticsearch啓動失敗
> [admin@localhost ~]$ sudo systemctl start elasticsearch
> <img width="929" height="254" alt="image" src="https://github.com/user-attachments/assets/bde049f8-7679-4087-b91e-c9bd9f05c95d" />

###### 如何解決Elasticsearch啓動失敗

修改設定檔（更乾淨）
如果你不想改檔名，可以直接在 /etc/elasticsearch/elasticsearch.yml 裡改成：

#### 如果檢查狀態后發現狀態失敗，一下是解決方案
> [admin@localhost ~]$ sudo vi /etc/elasticsearch/elasticsearch.yml
<img width="912" height="96" alt="image" src="https://github.com/user-attachments/assets/a784032f-addb-4813-9afa-f5be48cafb3b" />


###### 修改前  
opendistro_security.ssl.transport.pemcert_filepath: esnode.pem  
opendistro_security.ssl.transport.pemkey_filepath: esnode-key.pem  
opendistro_security.ssl.transport.pemtrustedcas_filepath: root-ca.pem  
<img width="903" height="493" alt="image" src="https://github.com/user-attachments/assets/23655505-9fd1-4787-8b60-466a4a23a7a3" />  


opendistro_security.ssl.http.pemcert_filepath: esnode.pem  
opendistro_security.ssl.http.pemkey_filepath: esnode-key.pem  
opendistro_security.ssl.http.pemtrustedcas_filepath: root-ca.pem  
<img width="915" height="503" alt="image" src="https://github.com/user-attachments/assets/1ce922ef-f1be-44da-9a6c-07ae555a5463" />  


#### 修改后  
opendistro_security.ssl.transport.pemcert_filepath: /etc/elasticsearch/wazuh-certificates/node-1.pem  
opendistro_security.ssl.transport.pemkey_filepath: /etc/elasticsearch/wazuh-certificates/node-1-key.pem  
opendistro_security.ssl.transport.pemtrustedcas_filepath: /etc/elasticsearch/wazuh-certificates/root-ca.pem  
<img width="909" height="412" alt="image" src="https://github.com/user-attachments/assets/8e7eba66-d22f-4d1f-b3c6-0a2a6604e3b4" />  


opendistro_security.ssl.http.pemcert_filepath: /etc/elasticsearch/wazuh-certificates/node-1.pem  
opendistro_security.ssl.http.pemkey_filepath: /etc/elasticsearch/wazuh-certificates/node-1-key.pem  
opendistro_security.ssl.http.pemtrustedcas_filepath: /etc/elasticsearch/wazuh-certificates/root-ca.pem  
<img width="907" height="467" alt="image" src="https://github.com/user-attachments/assets/adf4b81d-356d-43e0-9934-2f77479c9fa6" />  


⚠️ 檔案權限  
無論用哪個方案，記得要讓 elasticsearch 使用者能讀取檔案：  
> [admin@localhost ~]$ sudo chown -R elasticsearch:elasticsearch /etc/elasticsearch/wazuh-certificates  
<img width="914" height="58" alt="image" src="https://github.com/user-attachments/assets/e02a712e-a591-4641-b673-32f23ba9d217" />
查看文件權限  
> [admin@localhost ~]$ sudo ls -l /etc/sysconfig/elasticsearch
<img width="910" height="89" alt="image" src="https://github.com/user-attachments/assets/4a49f900-619c-42ec-9ee6-38c689d6caa7" />
> [admin@localhost ~]$ sudo chown root:root /etc/sysconfig/elasticsearch
<img width="909" height="59" alt="image" src="https://github.com/user-attachments/assets/ab35e047-c87e-4efe-a535-3780c31040fb" />
> [admin@localhost ~]$ sudo cd /etc/elasticsearch/wazuh-certificates sudo chmod 644 *  
<img width="908" height="59" alt="image" src="https://github.com/user-attachments/assets/286433a2-a37d-4ae9-bd17-59d9c4c08e4c" />
> [admin@localhost ~]$ sudo ls -l /etc/elasticsearch/wazuh-certificates  
<img width="918" height="426" alt="image" src="https://github.com/user-attachments/assets/94f2a2a7-a6af-4cf0-9a68-42288d99692e" />


重新載入 systemd 和 啓動Elasticsearch 和檢查狀態  
> [admin@localhost ~]$ sudo systemctl daemon-reload  
> [admin@localhost ~]$ sudo systemctl restart elasticsearch  
> [admin@localhost ~]$ sudo systemctl status elasticsearch -l  
<img width="916" height="556" alt="image" src="https://github.com/user-attachments/assets/105caf04-4689-4143-91b0-49a37a9e08de" />  


###### Run the Elasticsearch scripts  
> [admin@localhost ~]$ > # sudo export JAVA_HOME=/usr/share/elasticsearch/jdk/ && /usr/share/elasticsearch/plugins/opendistro_security/tools/securityadmin.sh -cd /usr/share/elasticsearch/plugins/opendistro_security/securityconfig/ -nhnv -cacert /etc/elasticsearch/certs/root-ca.pem -cert /etc/elasticsearch/certs/admin.pem -key /etc/elasticsearch/certs/admin-key.pem











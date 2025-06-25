## 🟦 ASUS ROG STRIX B250F GAMING (Intel i5-7500)
- CPU 支援：Intel LGA 1151 插槽，支援第 6 代（Skylake）與第 7 代（Kaby Lake）Intel Core i3/i5/i7、Pentium、Celeron 處理器。
- RAM 支援：
- 類型：DDR4
- 插槽數：4 條 DIMM
- 最大容量：64GB
- 頻率支援：DDR4-2400 / 2133 MHz（不支援超頻）

### Command check motherboard
> C:\Users\home01>wmic baseboard get product,Manufacturer
> Manufacturer           Product
> ASUSTeK COMPUTER INC.  STRIX B250F GAMING

### Command check RAM
> PS C:\Users\home01> Get-CimInstance Win32_PhysicalMemory | Select-Object @{Name="容量(GB)";Expression={[math]::Round($_.Capacity/1GB,2)}}, Manufacturer, PartNumber, Speed | Format-Table -AutoSize
> 容量(GB) Manufacturer PartNumber           Speed
> -------- ------------ ----------           -----
>        8 0000         CL16-16-16 D4-2400    2400
>        8 Kingston     99U5702-094.A00G      2400

### Command check display card
> C:\Users\home01>wmic path win32_VideoController get Name  
> Name  
> NVIDIA GeForce GTX 1650 SUPER  
> NVIDIA GeForce GTX 1060 3GB  


## 🟥 ASRock X570 Phantom Gaming 4 (AMD 5 3600)
- CPU 支援：AMD AM4 插槽，支援 Ryzen 2000、3000、4000 G 系列、5000 和 5000 G 系列處理器。
- RAM 支援：
- 類型：DDR4
- 插槽數：4 條 DIMM
- 最大容量：128GB
- 頻率支援：最高 DDR4-4066+（需超頻）

## RAM
> Corsair Vengeance RGB RS DDR4 3600 C18 64GB Kit (2x32GB) (CMG64GX4M2D3600C18)

## Display card
> NVIDIA GeForce GTX 1650 SUPER  
> NVIDIA GeForce GTX 1060 3GB  


## 套系統加上兩條 M.2 和 6 顆硬碟，電力需求會再提升一些。以下是大致的功耗估算（以高負載為準）：
> - **Ryzen 5 3600**：65W  
> - **GTX 1650 SUPER**：100W  
> - **GTX 1060 3GB**：120W  
> - **主機板 + RAM（64GB RGB）**：約 30W  
> - **2 條 M.2 SSD**：約 10–15W  
> - **6 顆 HDD/SSD**：  
>   - 若為 3.5 吋 HDD：每顆約 6–9W，總計約 50W  
>   - 若為 2.5 吋 SSD：每顆約 2–4W，總計約 20W  
> ### ➤ 總功耗估算：
> - **最低估算（全 SSD）**：約 **330–360W**
> - **最高估算（全 HDD）**：約 **400–430W**
> ### ✅ 建議電源供應器：
> 為了保留擴充空間與確保穩定性，建議使用 **650W 至 750W 的 80+ 金牌 PSU**。這樣即使未來升級顯示卡或加裝其他設備，也能應付得來。







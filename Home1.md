C:\Users\home01>wmic baseboard get product,Manufacturer
Manufacturer           Product
ASUSTeK COMPUTER INC.  STRIX B250F GAMING

PS C:\Users\home01> Get-CimInstance Win32_PhysicalMemory | Select-Object @{Name="容量(GB)";Expression={[math]::Round($_.Capacity/1GB,2)}}, Manufacturer, PartNumber, Speed | Format-Table -AutoSize
容量(GB) Manufacturer PartNumber           Speed
-------- ------------ ----------           -----
       8 0000         CL16-16-16 D4-2400    2400
       8 Kingston     99U5702-094.A00G      2400


C:\Users\home01>wmic path win32_VideoController get Name
Name
NVIDIA GeForce GTX 1650 SUPER
NVIDIA GeForce GTX 1060 3GB


# 🟥 ASRock X570 Phantom Gaming 4 (AMD 5 3600)
- CPU 支援：AMD AM4 插槽，支援 Ryzen 2000、3000、4000 G 系列、5000 和 5000 G 系列處理器。
- RAM 支援：
- 類型：DDR4
- 插槽數：4 條 DIMM
- 最大容量：128GB
- 頻率支援：最高 DDR4-4066+（需超頻）

# 🟦 ASUS ROG STRIX B250F GAMING (Intel i5-7500)
- CPU 支援：Intel LGA 1151 插槽，支援第 6 代（Skylake）與第 7 代（Kaby Lake）Intel Core i3/i5/i7、Pentium、Celeron 處理器。
- RAM 支援：
- 類型：DDR4
- 插槽數：4 條 DIMM
- 最大容量：64GB
- 頻率支援：DDR4-2400 / 2133 MHz（不支援超頻）






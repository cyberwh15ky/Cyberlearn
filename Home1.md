C:\Users\home01>wmic baseboard get product,Manufacturer
Manufacturer           Product
ASUSTeK COMPUTER INC.  STRIX B250F GAMING

PS C:\Users\home01> Get-CimInstance Win32_PhysicalMemory | Select-Object @{Name="容量(GB)";Expression={[math]::Round($_.Capacity/1GB,2)}}, Manufacturer, PartNumber, Speed | Format-Table -AutoSize
容量(GB) Manufacturer PartNumber           Speed
-------- ------------ ----------           -----
       8 0000         CL16-16-16 D4-2400    2400
       8 Kingston     99U5702-094.A00G      2400

ASROCK X570 PHANTOM GAMING 4

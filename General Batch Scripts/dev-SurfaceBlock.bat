@echo off
set adapterName=Ethernet 3

netsh interface ip set address "%adapterName%" static 10.0.28.15 255.255.255.0 10.0.28.1
netsh interface ip add dns "%adapterName%" 1.1.1.1
netsh interface ip add dns "%adapterName%" 1.0.0.1 index=2
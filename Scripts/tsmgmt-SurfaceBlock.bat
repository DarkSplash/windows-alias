@echo off
set adapterName=Ethernet 4

netsh interface ip set address "%adapterName%" static 192.168.1.100 255.255.255.0 192.168.1.20
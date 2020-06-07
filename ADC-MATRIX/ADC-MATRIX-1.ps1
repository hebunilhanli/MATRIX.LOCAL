#Change Ethernet Name
Rename-NetAdapter -Name "Ethernet0" -NewName "Matrix"

#Set IP Address,Subnet and Gateway
New-NetIPAddress -InterfaceAlias "Matrix" -IPAddress "131.201.89.3" -PrefixLength 24 -DefaultGateway "131.201.89.1"

#Set DNS
Set-DnsClientServerAddress -InterfaceAlias "Matrix" -ServerAddresses 131.201.89.2

#Disable IPv6
Disable-NetAdapterBinding -Name "Matrix" -ComponentID ms_tcpip6

#Change compute name and Restart
Rename-Computer -NewName 'ADC-MATRIX' -Restart

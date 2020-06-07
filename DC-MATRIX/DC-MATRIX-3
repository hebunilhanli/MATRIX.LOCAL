Add-DnsServerPrimaryZone -NetworkId "131.201.89.0/24" -ReplicationScope Domain
Add-DnsServerResourceRecordPtr -Name "2" -ZoneName 89.201.131.in-addr.arpa -ComputerName DC-MATRIX -PtrDomainName DC-MATRIX.matrix.local -AllowUpdateAny

$configNCDN = (Get-ADRootDSE).ConfigurationNamingContext
$siteContainerDN = ("CN=Sites," + $configNCDN)
$siteDN = "CN=Default-First-Site-Name," + $siteContainerDN
Get-ADObject -Identity $siteDN | Rename-ADObject -NewName:"Zion"
New-ADReplicationSubnet -Name "131.201.89.0/24" -Site Zion


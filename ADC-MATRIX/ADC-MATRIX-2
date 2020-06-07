#Add Computer in Domain
Add-Computer -Credential MATRIX\Administrator -DomainName matrix.local

#Import ADDS Module
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

#Add Additional Domain Controller
Install-ADDSDomainController -CreateDnsDelegation:$false -DatabasePath 'C:\Windows\NTDS' -DomainName 'matrix.local' -InstallDns:$true -LogPath 'C:\Windows\NTDS' -NoGlobalCatalog:$false -SiteName 'Zion' -SysvolPath 'C:\Windows\SYSVOL' -NoRebootOnCompletion:$true -Force:$true

#Server will be restart

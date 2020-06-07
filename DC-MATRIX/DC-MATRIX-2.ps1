#Install ADDS
Install-WindowsFeature AD-Domain-Services -IncludeManagementTool

#Import ADDS Module
Import-Module ADDSDeployment

#Create Forest and Domain
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath "C:\Windows\NTDS" -DomainMode "Win2012R2" -DomainName "matrix.local" -DomainNetbiosName "MATRIX" -ForestMode "Win2012R2" -InstallDns:$true -LogPath "C:\Windows\NTDS" -NoRebootOnCompletion:$false -SysvolPath "C:\Windows\SYSVOL" -Force:$true

#Server will be restart

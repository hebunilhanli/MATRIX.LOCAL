#Create OU
New-ADOrganizationalUnit -Name Nebuchadnezzar

#Create OU in Nebuchadnezzar
New-ADOrganizationalUnit -Name Captains -Path "OU=Nebuchadnezzar, DC=matrix, DC=local"
New-ADOrganizationalUnit -Name Operators -Path "OU=Nebuchadnezzar, DC=matrix, DC=local"

#Create User in Captains
New-ADUser -Name Neo -GivenName Neo -UserPrincipalName neo@matrix.local -DisplayName "Neo" -SamAccountName Neo -Path "OU=Captains, OU=Nebuchadnezzar, DC=matrix, DC=local" -AccountPassword(Read-Host -AsSecureString "Passw0rd1") -Enabled $true
New-ADUser -Name Trinity -GivenName Trinity -UserPrincipalName trinity@matrix.local -DisplayName "Trinity" -SamAccountName Trinity -Path "OU=Captains, OU=Nebuchadnezzar, DC=matrix, DC=local" -AccountPassword(Read-Host -AsSecureString "Passw0rd1") -Enabled $true
New-ADUser -Name Morpheus -GivenName Morpheus -UserPrincipalName morpheus@matrix.local -DisplayName "Morpheus" -SamAccountName Morpheus -Path "OU=Captains, OU=Nebuchadnezzar, DC=matrix, DC=local" -AccountPassword(Read-Host -AsSecureString "Passw0rd1") -Enabled $true

#Create User in Operators
New-ADUser -Name Tank -GivenName Tank -UserPrincipalName tank@matrix.local -DisplayName "Tank" -SamAccountName Tank -Path "OU=Operators, OU=Nebuchadnezzar, DC=matrix, DC=local" -AccountPassword(Read-Host -AsSecureString "Passw0rd1") -Enabled $true
New-ADUser -Name Link -GivenName Link -UserPrincipalName link@matrix.local -DisplayName "Link" -SamAccountName Link -Path "OU=Operators, OU=Nebuchadnezzar, DC=matrix, DC=local" -AccountPassword(Read-Host -AsSecureString "Passw0rd1") -Enabled $true

#Create Group
New-ADGroup -Name FieldOfficers -Path "OU=Captains, OU=Nebuchadnezzar, DC=matrix, DC=local" -GroupScope Global
New-ADGroup -Name ShipOfficers -Path "OU=Operators, OU=Nebuchadnezzar, DC=matrix, DC=local" -GroupScope Global
New-ADGroup -Name Crew -Path "OU=Nebuchadnezzar, DC=matrix, DC=local" -GroupScope Global

#Add Group Member
Add-ADGroupMember -Identity "FieldOfficers" -Members Neo, Trinity, Morpheus
Add-ADGroupMember -Identity "ShipOfficers" -Members Tank, Link
Add-ADGroupMember -Identity "Crew" -Members FieldOfficers, ShipOfficers


# domain-controller-setup.ps1

# Install Active Directory Domain Services
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Promote server to Domain Controller
Install-ADDSForest `
    -DomainName "local" `
    -SafeModeAdministratorPassword (ConvertTo-SecureString -AsPlainText "Aster*2022" -Force) `
    -DomainMode Win2019 `
    -ForestMode Win2019 `
    -CreateDnsDelegation:$false `
    -DatabasePath "C:\Windows\NTDS" `
    -LogPath "C:\Windows\NTDS" `
    -SysvolPath "C:\Windows\SYSVOL" `
    -Force:$true

# Restart the server
Restart-Computer -Force




# Define the credentials for joining the domain
$domainUsername = ${adminusername}
$domainPassword = ${adminpassword} | ConvertTo-SecureString -AsPlainText -Force
$domainCred = New-Object System.Management.Automation.PSCredential($domainUsername, $domainPassword)

# Define the domain controller hostname and domain name
$domainControllerHostname = "dc"
$domainName = "local"

# Join the server to the domain
New-NetIPAddress IPAddress 10.0.5.5 -DefaultGateway 10.0.5.1 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex
Set-DNSClientServerAddress InterfaceIndex (Get-NetAdapter).InterfaceIndex ServerAddresses 10.0.5.1
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools
Add-Computer -DomainName $domainName -Credential $domainCred -Server $domainControllerHostname -Restart

# domain-join.ps1

# Define credentials and domain information
$adminUsername = ${adminusername}
$adminPassword = ConvertTo-SecureString -String "<YourAdminPassword>" -AsPlainText -Force
$domainName = "local"
$domainUser = ${adminusername}

# Joining the VM to the domain
$credential = New-Object System.Management.Automation.PSCredential ($domainUser, $adminPassword)

# Perform the domain join operation
try {
    Add-Computer -DomainName $domainName -Credential $credential -Restart -Force -ErrorAction Stop
    Write-Output "Successfully joined the VM to the domain."
} catch {
    Write-Error "Failed to join the VM to the domain. $_"
    exit 1
}

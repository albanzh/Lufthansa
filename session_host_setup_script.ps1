# Define the credentials for joining the domain
$domainUsername = ${adminusername}
$domainPassword = ${adminpassword} | ConvertTo-SecureString -AsPlainText -Force
$domainCred = New-Object System.Management.Automation.PSCredential($domainUsername, $domainPassword)

# Define the domain controller hostname and domain name
$domainControllerHostname = "dc"
$domainName = "aster.local"

# Join the server to the domain
Add-Computer -DomainName $domainName -Credential $domainCred -Server $domainControllerHostname -Restart



# Install Remote Desktop Services role for Session Host
Install-WindowsFeature -Name RDS-RD-Server -IncludeManagementTools

# Configure Session Host settings
$connectionBroker = "10.0.5.6" # Replace with your RD Connection Broker server's hostname or IP address
Set-RDSessionHost -ConnectionBroker $connectionBroker -AcceptConnections "True"

# Restart Remote Desktop Services for the changes to take effect
Restart-Service TermService -Force


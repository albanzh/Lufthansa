# Define the credentials for joining the domain
$domainUsername = ${adminusername}
$domainPassword = ${adminpassword} | ConvertTo-SecureString -AsPlainText -Force
$domainCred = New-Object System.Management.Automation.PSCredential($domainUsername, $domainPassword)

# Define the domain controller hostname and domain name
$domainControllerHostname = "dc"
$domainName = "aster.local"

# Join the server to the domain
Add-Computer -DomainName $domainName -Credential $domainCred -Server $domainControllerHostname -Restart



# Install Remote Desktop Services roles for RD Web, RD Broker, and RD Gateway
Install-WindowsFeature -Name RDS-Web-Access, RDS-Connection-Broker, RDS-Gateway -IncludeManagementTools

# Configure RD Web Access
$rdwaServer = "127.0.0.1" # Replace with your RD Web Access server's hostname or IP address
Set-RDWebAccessConfiguration -Server $rdwaServer -CertHash $rdwaCodeSigningCertificateThumbprint

# Configure RD Connection Broker
$rdbServer = "127.0.0.1" # Replace with your RD Connection Broker server's hostname or IP address
Set-RDServer -Role RDS-Connection-Broker -ConnectionBroker $rdbServer

# Configure RD Gateway
$rdgServer = "127.0.0.1" # Replace with your RD Gateway server's hostname or IP address
Set-RDGatewayConfiguration -GatewayServer $rdgServer -SSLCertificateSHA1Hash $rdgSSLThumbprint

# Restart Remote Desktop Services for the changes to take effect
Restart-Service TermService -Force

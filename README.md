# Lufthansa
Install Azure CLI
Install Terraform
Configure your environment to run Terraform on Windows
Understand common Terraform and Azure authentication scenarios
Authenticate via a Microsoft account from Windows
Create a service principal using the Azure CLI
Create a service principal using Azure PowerShell
Specify service principal credentials in environment variables
Specify service principal credentials in a Terraform provider block
Resource Group: A foundational resource to group and manage all related Azure resources.
Virtual Network and Subnet: Network configurations for isolating resources and managing the flow of data.
Network Security Group: To define inbound and outbound security rules for the resources.
Public IP: Allocates public IPs for VMs and Load Balancers.
Network Interface: Configures network interfaces for Virtual Machines.
Load Balancer: Distributes inbound traffic across VM instances.
3 Windows Virtual Machines: Deploys a set of Windows Server 2019 instances. Uses random usernames and passwords for added security.
VM Extensions: Executes custom scripts on VM instances for tasks like domain joining and setting up RDS (Remote Desktop Services).


Here are some of the key variables:
prefix: A string used as a naming prefix for all provisioned resources.
location: Azure region where the resources should be created.
vm_count: Number of VM instances to deploy.
vm_size: The size or type of the VM instances.

--------------------------------------------------------------------------------------------------------


Error: Code="VMExtensionProvisioningError" Message="VM has reported a failure when processing extension 'dc' (publisher 'Microsoft.Compute' and type 'CustomScriptExtension'). Error message: \"Finished executing command\". More information on troubleshooting 
is available at https://aka.ms/VMExtensionCSEWindowsTroubleshoot. "
│
│   with azurerm_virtual_machine_extension.srv0,
│   on main.tf line 104, in resource "azurerm_virtual_machine_extension" "srv0":
│  104: resource "azurerm_virtual_machine_extension" "srv0" {


------------------------------------------------------------------------------------------------------------------------------------------------------------------

Terminal:

    }

  # azurerm_windows_virtual_machine.srv[0] will be created
  + resource "azurerm_windows_virtual_machine" "srv" {
      + admin_password                                         = (sensitive value)
      + admin_username                                         = "vQ8aMdrny9RJ"
      + allow_extension_operations                             = true
      + bypass_platform_safety_checks_on_user_schedule_enabled = false
      + computer_name                                          = (known after apply)
      + enable_automatic_updates                               = true
      + extensions_time_budget                                 = "PT1H30M"
      + hotpatching_enabled                                    = false
      + id                                                     = (known after apply)
      + location                                               = "westeurope"
      + max_bid_price                                          = -1
      + name                                                   = "Aster-vm-0"
      + network_interface_ids                                  = (known after apply)
      + patch_assessment_mode                                  = "ImageDefault"
      + patch_mode                                             = "AutomaticByOS"
      + platform_fault_domain                                  = -1
      + priority                                               = "Regular"
      + private_ip_address                                     = (known after apply)
      + private_ip_addresses                                   = (known after apply)
      + provision_vm_agent                                     = true
      + public_ip_address                                      = (known after apply)
      + public_ip_addresses                                    = (known after apply)
      + resource_group_name                                    = "Aster-rg"
      + size                                                   = "Standard_DS2_v2"
      + virtual_machine_id                                     = (known after apply)

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }

      + source_image_reference {
          + offer     = "WindowsServer"
          + publisher = "MicrosoftWindowsServer"
          + sku       = "2019-Datacenter"
          + version   = "latest"
        }
    }

  # azurerm_windows_virtual_machine.srv[1] will be created
  + resource "azurerm_windows_virtual_machine" "srv" {
      + admin_password                                         = (sensitive value)
      + admin_username                                         = "vQ8aMdrny9RJ"
      + allow_extension_operations                             = true
      + bypass_platform_safety_checks_on_user_schedule_enabled = false
      + computer_name                                          = (known after apply)
      + enable_automatic_updates                               = true
      + extensions_time_budget                                 = "PT1H30M"
      + hotpatching_enabled                                    = false
      + id                                                     = (known after apply)
      + location                                               = "westeurope"
      + max_bid_price                                          = -1
      + name                                                   = "Aster-vm-1"
      + network_interface_ids                                  = (known after apply)
      + patch_assessment_mode                                  = "ImageDefault"
      + patch_mode                                             = "AutomaticByOS"
      + platform_fault_domain                                  = -1
      + priority                                               = "Regular"
      + private_ip_address                                     = (known after apply)
      + private_ip_addresses                                   = (known after apply)
      + provision_vm_agent                                     = true
      + public_ip_address                                      = (known after apply)
      + public_ip_addresses                                    = (known after apply)
      + resource_group_name                                    = "Aster-rg"
      + size                                                   = "Standard_DS2_v2"
      + virtual_machine_id                                     = (known after apply)

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }

      + source_image_reference {
          + offer     = "WindowsServer"
          + publisher = "MicrosoftWindowsServer"
          + sku       = "2019-Datacenter"
          + version   = "latest"
        }
    }

  # azurerm_windows_virtual_machine.srv[2] will be created
  + resource "azurerm_windows_virtual_machine" "srv" {
      + admin_password                                         = (sensitive value)
      + admin_username                                         = "vQ8aMdrny9RJ"
      + allow_extension_operations                             = true
      + bypass_platform_safety_checks_on_user_schedule_enabled = false
      + computer_name                                          = (known after apply)
      + enable_automatic_updates                               = true
      + extensions_time_budget                                 = "PT1H30M"
      + hotpatching_enabled                                    = false
      + id                                                     = (known after apply)
      + location                                               = "westeurope"
      + max_bid_price                                          = -1
      + name                                                   = "Aster-vm-2"
      + network_interface_ids                                  = (known after apply)
      + patch_assessment_mode                                  = "ImageDefault"
      + patch_mode                                             = "AutomaticByOS"
      + platform_fault_domain                                  = -1
      + priority                                               = "Regular"
      + private_ip_address                                     = (known after apply)
      + private_ip_addresses                                   = (known after apply)
      + provision_vm_agent                                     = true
      + public_ip_address                                      = (known after apply)
      + public_ip_addresses                                    = (known after apply)
      + resource_group_name                                    = "Aster-rg"
      + size                                                   = "Standard_DS2_v2"
      + virtual_machine_id                                     = (known after apply)

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }

      + source_image_reference {
          + offer     = "WindowsServer"
          + publisher = "MicrosoftWindowsServer"
          + sku       = "2019-Datacenter"
          + version   = "latest"
        }
    }

Plan: 18 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  ~ vm_ips           = [
      - [
          - "10.0.5.5",
          - "10.0.5.6",
          - "10.0.5.4",
        ],
      + [
          + (known after apply),
          + (known after apply),
          + (known after apply),
        ],
    ]

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run     
"terraform apply" now.
Releasing state lock. This may take a few moments...
PS C:\Users\alban\Documents\GitHub\techtask1> terraform apply
random_password.windows_password: Refreshing state... [id=none]
random_string.windows_username: Refreshing state... [id=vQ8aMdrny9RJ]
data.template_file.sessions: Reading...
data.template_file.rds: Reading...
data.template_file.dc: Reading...
data.template_file.rds: Read complete after 0s [id=e1753ee9c1dac24339aeab23996bf4b19c394a5c1905c6405553a4efbfde2435]
data.template_file.sessions: Read complete after 0s [id=27428d80864ffb169f66cbf7e2ec161d54de8b72b4e031d5c79ac6566ae16607]
data.template_file.dc: Read complete after 0s [id=02f1a4d415948191c82839f30cb883fbfae74ee0c903886829419e99218c0774]
azurerm_resource_group.techtaskaster: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg]
azurerm_network_security_group.nsg: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkSecurityGroups/Aster-nsg]
azurerm_public_ip.puip: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-lb-public-ip]
azurerm_virtual_network.myvnet: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/virtualNetworks/Aster-vnet]
azurerm_public_ip.externalip[1]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-pip-1]
azurerm_public_ip.externalip[2]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-pip-2]
azurerm_public_ip.externalip[0]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-pip-0]
azurerm_lb.las: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/loadBalancers/Aster-lb]
azurerm_subnet.mynet: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/virtualNetworks/Aster-vnet/subnets/Aster-subnet]
azurerm_network_interface.nic[0]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkInterfaces/Aster-nic-0]
azurerm_network_interface.nic[2]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkInterfaces/Aster-nic-2]
azurerm_network_interface.nic[1]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkInterfaces/Aster-nic-1]
azurerm_windows_virtual_machine.srv[2]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-2]
azurerm_windows_virtual_machine.srv[0]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-0]
azurerm_windows_virtual_machine.srv[1]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-1]
azurerm_virtual_machine_extension.srv0: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-0/extensions/dc]

Note: Objects have changed outside of Terraform

Terraform detected the following changes made outside of Terraform since the last "terraform apply" which may have affected this  
plan:

  # azurerm_public_ip.puip has been deleted
  - resource "azurerm_public_ip" "puip" {
      - id                      = "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-lb-public-ip" -> null
        name                    = "Aster-lb-public-ip"
        tags                    = {}
        # (10 unchanged attributes hidden)
    }

  # azurerm_resource_group.techtaskaster has been deleted
  - resource "azurerm_resource_group" "techtaskaster" {
        id       = "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg"
      - location = "westeurope" -> null
      - name     = "Aster-rg" -> null
        tags     = {}
    }

  # azurerm_subnet.mynet has been deleted
  - resource "azurerm_subnet" "mynet" {
      - id                                             = "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/virtualNetworks/Aster-vnet/subnets/Aster-subnet" -> null
        name                                           = "Aster-subnet"
        # (9 unchanged attributes hidden)
    }

  # azurerm_virtual_network.myvnet has been deleted
  - resource "azurerm_virtual_network" "myvnet" {
        id                      = "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/virtualNetworks/Aster-vnet"
      - name                    = "Aster-vnet" -> null
        tags                    = {}
        # (7 unchanged attributes hidden)
    }

  # azurerm_windows_virtual_machine.srv[0] has been deleted
  - resource "azurerm_windows_virtual_machine" "srv" {
      - id                                                     = "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-0" -> null
        name                                                   = "Aster-vm-0"
        tags                                                   = {}
        # (26 unchanged attributes hidden)

        # (2 unchanged blocks hidden)
    }

  # azurerm_windows_virtual_machine.srv[1] has been deleted
  - resource "azurerm_windows_virtual_machine" "srv" {
      - id                                                     = "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-1" -> null
        name                                                   = "Aster-vm-1"
        tags                                                   = {}
        # (26 unchanged attributes hidden)

        # (2 unchanged blocks hidden)
    }

  # azurerm_windows_virtual_machine.srv[2] has been deleted
  - resource "azurerm_windows_virtual_machine" "srv" {
      - id                                                     = "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-2" -> null
        name                                                   = "Aster-vm-2"
        tags                                                   = {}
        # (26 unchanged attributes hidden)

        # (2 unchanged blocks hidden)
    }


Unless you have made equivalent changes to your configuration, or ignored the relevant attributes using ignore_changes, the       
following plan may include actions to undo or respond to these changes.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following 
symbols:
  + create

Terraform will perform the following actions:

  # azurerm_lb.las will be created
  + resource "azurerm_lb" "las" {
      + id                   = (known after apply)
      + location             = "westeurope"
      + name                 = "Aster-lb"
      + private_ip_address   = (known after apply)
      + private_ip_addresses = (known after apply)
      + resource_group_name  = "Aster-rg"
      + sku                  = "Basic"
      + sku_tier             = "Regional"

      + frontend_ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + id                                                 = (known after apply)
          + inbound_nat_rules                                  = (known after apply)
          + load_balancer_rules                                = (known after apply)
          + name                                               = "public"
          + outbound_rules                                     = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = (known after apply)
          + private_ip_address_version                         = (known after apply)
          + public_ip_address_id                               = (known after apply)
          + public_ip_prefix_id                                = (known after apply)
          + subnet_id                                          = (known after apply)
        }
    }

  # azurerm_network_interface.nic[0] will be created
  + resource "azurerm_network_interface" "nic" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "westeurope"
      + mac_address                   = (known after apply)
      + name                          = "Aster-nic-0"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = "Aster-rg"
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + name                                               = "internal"
          + primary                                            = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = "Dynamic"
          + private_ip_address_version                         = "IPv4"
          + public_ip_address_id                               = (known after apply)
          + subnet_id                                          = (known after apply)
        }
    }

  # azurerm_network_interface.nic[1] will be created
  + resource "azurerm_network_interface" "nic" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "westeurope"
      + mac_address                   = (known after apply)
      + name                          = "Aster-nic-1"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = "Aster-rg"
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + name                                               = "internal"
          + primary                                            = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = "Dynamic"
          + private_ip_address_version                         = "IPv4"
          + public_ip_address_id                               = (known after apply)
          + subnet_id                                          = (known after apply)
        }
    }

  # azurerm_network_interface.nic[2] will be created
  + resource "azurerm_network_interface" "nic" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "westeurope"
      + mac_address                   = (known after apply)
      + name                          = "Aster-nic-2"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = "Aster-rg"
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + name                                               = "internal"
          + primary                                            = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = "Dynamic"
          + private_ip_address_version                         = "IPv4"
          + public_ip_address_id                               = (known after apply)
          + subnet_id                                          = (known after apply)
        }
    }

  # azurerm_network_security_group.nsg will be created
  + resource "azurerm_network_security_group" "nsg" {
      + id                  = (known after apply)
      + location            = "westeurope"
      + name                = "Aster-nsg"
      + resource_group_name = "Aster-rg"
      + security_rule       = (known after apply)
    }

  # azurerm_public_ip.externalip[0] will be created
  + resource "azurerm_public_ip" "externalip" {
      + allocation_method       = "Dynamic"
      + ddos_protection_mode    = "VirtualNetworkInherited"
      + fqdn                    = (known after apply)
      + id                      = (known after apply)
      + idle_timeout_in_minutes = 4
      + ip_address              = (known after apply)
      + ip_version              = "IPv4"
      + location                = "westeurope"
      + name                    = "Aster-pip-0"
      + resource_group_name     = "Aster-rg"
      + sku                     = "Basic"
      + sku_tier                = "Regional"
    }

  # azurerm_public_ip.externalip[1] will be created
  + resource "azurerm_public_ip" "externalip" {
      + allocation_method       = "Dynamic"
      + ddos_protection_mode    = "VirtualNetworkInherited"
      + fqdn                    = (known after apply)
      + id                      = (known after apply)
      + idle_timeout_in_minutes = 4
      + ip_address              = (known after apply)
      + ip_version              = "IPv4"
      + location                = "westeurope"
      + name                    = "Aster-pip-1"
      + resource_group_name     = "Aster-rg"
      + sku                     = "Basic"
      + sku_tier                = "Regional"
    }

  # azurerm_public_ip.externalip[2] will be created
  + resource "azurerm_public_ip" "externalip" {
      + allocation_method       = "Dynamic"
      + ddos_protection_mode    = "VirtualNetworkInherited"
      + fqdn                    = (known after apply)
      + id                      = (known after apply)
      + idle_timeout_in_minutes = 4
      + ip_address              = (known after apply)
      + ip_version              = "IPv4"
      + location                = "westeurope"
      + name                    = "Aster-pip-2"
      + resource_group_name     = "Aster-rg"
      + sku                     = "Basic"
      + sku_tier                = "Regional"
    }

  # azurerm_public_ip.puip will be created
  + resource "azurerm_public_ip" "puip" {
      + allocation_method       = "Dynamic"
      + ddos_protection_mode    = "VirtualNetworkInherited"
      + fqdn                    = (known after apply)
      + id                      = (known after apply)
      + idle_timeout_in_minutes = 4
      + ip_address              = (known after apply)
      + ip_version              = "IPv4"
      + location                = "westeurope"
      + name                    = "Aster-lb-public-ip"
      + resource_group_name     = "Aster-rg"
      + sku                     = "Basic"
      + sku_tier                = "Regional"
    }

  # azurerm_resource_group.techtaskaster will be created
  + resource "azurerm_resource_group" "techtaskaster" {
      + id       = (known after apply)
      + location = "westeurope"
      + name     = "Aster-rg"
    }

  # azurerm_subnet.mynet will be created
  + resource "azurerm_subnet" "mynet" {
      + address_prefixes                               = [
          + "10.0.5.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = (known after apply)
      + enforce_private_link_service_network_policies  = (known after apply)
      + id                                             = (known after apply)
      + name                                           = "Aster-subnet"
      + private_endpoint_network_policies_enabled      = (known after apply)
      + private_link_service_network_policies_enabled  = (known after apply)
      + resource_group_name                            = "Aster-rg"
      + virtual_network_name                           = "Aster-vnet"
    }

  # azurerm_virtual_machine_extension.srv0 will be created
  + resource "azurerm_virtual_machine_extension" "srv0" {
      + failure_suppression_enabled = false
      + id                          = (known after apply)
      + name                        = "dc"
      + publisher                   = "Microsoft.Compute"
      + settings                    = <<-EOT
            {
              "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('DQojIGRvbWFpbi1jb250cm9sbGVyLXNldHVwLnBzMQ0KDQojIEluc3RhbGwgQWN0aXZlIERpcmVjdG9yeSBEb21haW4gU2VydmljZXMNCkluc3RhbGwtV2luZG93c0ZlYXR1cmUgLU5hbWUgQUQtRG9tYWluLVNlcnZpY2VzIC1JbmNsdWRlTWFuYWdlbWVudFRvb2xzDQoNCiMgUHJvbW90ZSBzZXJ2ZXIgdG8gRG9tYWluIENvbnRyb2xsZXINCkluc3RhbGwtQUREU0ZvcmVzdCBgDQogICAgLURvbWFpbk5hbWUgImxvY2FsIiBgDQogICAgLVNhZmVNb2RlQWRtaW5pc3RyYXRvclBhc3N3b3JkIChDb252ZXJ0VG8tU2VjdXJlU3RyaW5nIC1Bc1BsYWluVGV4dCAiQXN0ZXIqMjAyMiIgLUZvcmNlKSBgDQogICAgLURvbWFpbk1vZGUgV2luMjAxOSBgDQogICAgLUZvcmVzdE1vZGUgV2luMjAxOSBgDQogICAgLUNyZWF0ZURuc0RlbGVnYXRpb246JGZhbHNlIGANCiAgICAtRGF0YWJhc2VQYXRoICJDOlxXaW5kb3dzXE5URFMiIGANCiAgICAtTG9nUGF0aCAiQzpcV2luZG93c1xOVERTIiBgDQogICAgLVN5c3ZvbFBhdGggIkM6XFdpbmRvd3NcU1lTVk9MIiBgDQogICAgLUZvcmNlOiR0cnVlDQoNCiMgUmVzdGFydCB0aGUgc2VydmVyDQpSZXN0YXJ0LUNvbXB1dGVyIC1Gb3JjZQ0KDQoNCg0KDQojIERlZmluZSB0aGUgY3JlZGVudGlhbHMgZm9yIGpvaW5pbmcgdGhlIGRvbWFpbg0KJGRvbWFpblVzZXJuYW1lID0gdlE4YU1kcm55OVJKDQokZG9tYWluUGFzc3dvcmQgPSBFOE1SSHZbVmp0M0JNWTZSSlZsX1pZV1dIa1dSTEp0YUt7MDBZUGdtIHwgQ29udmVydFRvLVNlY3VyZVN0cmluZyAtQXNQbGFpblRleHQgLUZvcmNlDQokZG9tYWluQ3JlZCA9IE5ldy1PYmplY3QgU3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbi5QU0NyZWRlbnRpYWwoJGRvbWFpblVzZXJuYW1lLCAkZG9tYWluUGFzc3dvcmQpDQoNCiMgRGVmaW5lIHRoZSBkb21haW4gY29udHJvbGxlciBob3N0bmFtZSBhbmQgZG9tYWluIG5hbWUNCiRkb21haW5Db250cm9sbGVySG9zdG5hbWUgPSAiZGMiDQokZG9tYWluTmFtZSA9ICJsb2NhbCINCg0KIyBKb2luIHRoZSBzZXJ2ZXIgdG8gdGhlIGRvbWFpbg0KTmV3LU5ldElQQWRkcmVzcyDigJNJUEFkZHJlc3MgMTAuMC41LjUgLURlZmF1bHRHYXRld2F5IDEwLjAuNS4xIC1QcmVmaXhMZW5ndGggMjQgLUludGVyZmFjZUluZGV4IChHZXQtTmV0QWRhcHRlcikuSW50ZXJmYWNlSW5kZXgNClNldC1ETlNDbGllbnRTZXJ2ZXJBZGRyZXNzIOKAk0ludGVyZmFjZUluZGV4IChHZXQtTmV0QWRhcHRlcikuSW50ZXJmYWNlSW5kZXgg4oCTU2VydmVyQWRkcmVzc2VzIDEwLjAuNS4xDQpJbnN0YWxsLVdpbmRvd3NGZWF0dXJlIC1uYW1lIEFELURvbWFpbi1TZXJ2aWNlcyAtSW5jbHVkZU1hbmFnZW1lbnRUb29scw0KQWRkLUNvbXB1dGVyIC1Eb21haW5OYW1lICRkb21haW5OYW1lIC1DcmVkZW50aWFsICRkb21haW5DcmVkIC1TZXJ2ZXIgJGRvbWFpbkNvbnRyb2xsZXJIb3N0bmFtZSAtUmVzdGFydA0KDQojIGRvbWFpbi1qb2luLnBzMQ0KDQojIERlZmluZSBjcmVkZW50aWFscyBhbmQgZG9tYWluIGluZm9ybWF0aW9uDQokYWRtaW5Vc2VybmFtZSA9IHZROGFNZHJueTlSSg0KJGFkbWluUGFzc3dvcmQgPSBDb252ZXJ0VG8tU2VjdXJlU3RyaW5nIC1TdHJpbmcgIjxZb3VyQWRtaW5QYXNzd29yZD4iIC1Bc1BsYWluVGV4dCAtRm9yY2UNCiRkb21haW5OYW1lID0gImxvY2FsIg0KJGRvbWFpblVzZXIgPSB2UThhTWRybnk5UkoNCg0KIyBKb2luaW5nIHRoZSBWTSB0byB0aGUgZG9tYWluDQokY3JlZGVudGlhbCA9IE5ldy1PYmplY3QgU3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbi5QU0NyZWRlbnRpYWwgKCRkb21haW5Vc2VyLCAkYWRtaW5QYXNzd29yZCkNCg0KIyBQZXJmb3JtIHRoZSBkb21haW4gam9pbiBvcGVyYXRpb24NCnRyeSB7DQogICAgQWRkLUNvbXB1dGVyIC1Eb21haW5OYW1lICRkb21haW5OYW1lIC1DcmVkZW50aWFsICRjcmVkZW50aWFsIC1SZXN0YXJ0IC1Gb3JjZSAtRXJyb3JBY3Rpb24gU3RvcA0KICAgIFdyaXRlLU91dHB1dCAiU3VjY2Vzc2Z1bGx5IGpvaW5lZCB0aGUgVk0gdG8gdGhlIGRvbWFpbi4iDQp9IGNhdGNoIHsNCiAgICBXcml0ZS1FcnJvciAiRmFpbGVkIHRvIGpvaW4gdGhlIFZNIHRvIHRoZSBkb21haW4uICRfIg0KICAgIGV4aXQgMQ0KfQ0K')) | Out-File -filepath domain-join.ps1\" && powershell -ExecutionPolicy Unrestricted -File domain-join.ps1"
             }
        EOT
      + type                        = "CustomScriptExtension"
      + type_handler_version        = "1.9"
      + virtual_machine_id          = (known after apply)
    }

  # azurerm_virtual_machine_extension.srv1 will be created
  + resource "azurerm_virtual_machine_extension" "srv1" {
      + failure_suppression_enabled = false
      + id                          = (known after apply)
      + name                        = "rds"
      + publisher                   = "Microsoft.Compute"
      + settings                    = <<-EOT
            {
                "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IyBEZWZpbmUgdGhlIGNyZWRlbnRpYWxzIGZvciBqb2luaW5nIHRoZSBkb21haW4NCiRkb21haW5Vc2VybmFtZSA9IHZROGFNZHJueTlSSg0KJGRvbWFpblBhc3N3b3JkID0gRThNUkh2W1ZqdDNCTVk2UkpWbF9aWVdXSGtXUkxKdGFLezAwWVBnbSB8IENvbnZlcnRUby1TZWN1cmVTdHJpbmcgLUFzUGxhaW5UZXh0IC1Gb3JjZQ0KJGRvbWFpbkNyZWQgPSBOZXctT2JqZWN0IFN5c3RlbS5NYW5hZ2VtZW50LkF1dG9tYXRpb24uUFNDcmVkZW50aWFsKCRkb21haW5Vc2VybmFtZSwgJGRvbWFpblBhc3N3b3JkKQ0KDQojIERlZmluZSB0aGUgZG9tYWluIGNvbnRyb2xsZXIgaG9zdG5hbWUgYW5kIGRvbWFpbiBuYW1lDQokZG9tYWluQ29udHJvbGxlckhvc3RuYW1lID0gImRjIg0KJGRvbWFpbk5hbWUgPSAiYXN0ZXIubG9jYWwiDQoNCiMgSm9pbiB0aGUgc2VydmVyIHRvIHRoZSBkb21haW4NCkFkZC1Db21wdXRlciAtRG9tYWluTmFtZSAkZG9tYWluTmFtZSAtQ3JlZGVudGlhbCAkZG9tYWluQ3JlZCAtU2VydmVyICRkb21haW5Db250cm9sbGVySG9zdG5hbWUgLVJlc3RhcnQNCg0KDQoNCiMgSW5zdGFsbCBSZW1vdGUgRGVza3RvcCBTZXJ2aWNlcyByb2xlcyBmb3IgUkQgV2ViLCBSRCBCcm9rZXIsIGFuZCBSRCBHYXRld2F5DQpJbnN0YWxsLVdpbmRvd3NGZWF0dXJlIC1OYW1lIFJEUy1XZWItQWNjZXNzLCBSRFMtQ29ubmVjdGlvbi1Ccm9rZXIsIFJEUy1HYXRld2F5IC1JbmNsdWRlTWFuYWdlbWVudFRvb2xzDQoNCiMgQ29uZmlndXJlIFJEIFdlYiBBY2Nlc3MNCiRyZHdhU2VydmVyID0gIjEyNy4wLjAuMSIgIyBSZXBsYWNlIHdpdGggeW91ciBSRCBXZWIgQWNjZXNzIHNlcnZlcidzIGhvc3RuYW1lIG9yIElQIGFkZHJlc3MNClNldC1SRFdlYkFjY2Vzc0NvbmZpZ3VyYXRpb24gLVNlcnZlciAkcmR3YVNlcnZlciAtQ2VydEhhc2ggJHJkd2FDb2RlU2lnbmluZ0NlcnRpZmljYXRlVGh1bWJwcmludA0KDQojIENvbmZpZ3VyZSBSRCBDb25uZWN0aW9uIEJyb2tlcg0KJHJkYlNlcnZlciA9ICIxMjcuMC4wLjEiICMgUmVwbGFjZSB3aXRoIHlvdXIgUkQgQ29ubmVjdGlvbiBCcm9rZXIgc2VydmVyJ3MgaG9zdG5hbWUgb3IgSVAgYWRkcmVzcw0KU2V0LVJEU2VydmVyIC1Sb2xlIFJEUy1Db25uZWN0aW9uLUJyb2tlciAtQ29ubmVjdGlvbkJyb2tlciAkcmRiU2VydmVyDQoNCiMgQ29uZmlndXJlIFJEIEdhdGV3YXkNCiRyZGdTZXJ2ZXIgPSAiMTI3LjAuMC4xIiAjIFJlcGxhY2Ugd2l0aCB5b3VyIFJEIEdhdGV3YXkgc2VydmVyJ3MgaG9zdG5hbWUgb3IgSVAgYWRkcmVzcw0KU2V0LVJER2F0ZXdheUNvbmZpZ3VyYXRpb24gLUdhdGV3YXlTZXJ2ZXIgJHJkZ1NlcnZlciAtU1NMQ2VydGlmaWNhdGVTSEExSGFzaCAkcmRnU1NMVGh1bWJwcmludA0KDQojIFJlc3RhcnQgUmVtb3RlIERlc2t0b3AgU2VydmljZXMgZm9yIHRoZSBjaGFuZ2VzIHRvIHRha2UgZWZmZWN0DQpSZXN0YXJ0LVNlcnZpY2UgVGVybVNlcnZpY2UgLUZvcmNlDQo=')) | Out-File -filepath rd_server_setup_script.ps1\" && powershell -ExecutionPolicy Unrestricted -File rd_server_setup_script.ps1"

             }
        EOT
      + type                        = "CustomScriptExtension"
      + type_handler_version        = "1.9"
      + virtual_machine_id          = (known after apply)
    }

  # azurerm_virtual_machine_extension.srv2 will be created
  + resource "azurerm_virtual_machine_extension" "srv2" {
      + failure_suppression_enabled = false
      + id                          = (known after apply)
      + name                        = "sessions"
      + publisher                   = "Microsoft.Compute"
      + settings                    = <<-EOT
            {
                  "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IyBEZWZpbmUgdGhlIGNyZWRlbnRpYWxzIGZvciBqb2luaW5nIHRoZSBkb21haW4NCiRkb21haW5Vc2VybmFtZSA9IHZROGFNZHJueTlSSg0KJGRvbWFpblBhc3N3b3JkID0gRThNUkh2W1ZqdDNCTVk2UkpWbF9aWVdXSGtXUkxKdGFLezAwWVBnbSB8IENvbnZlcnRUby1TZWN1cmVTdHJpbmcgLUFzUGxhaW5UZXh0IC1Gb3JjZQ0KJGRvbWFpbkNyZWQgPSBOZXctT2JqZWN0IFN5c3RlbS5NYW5hZ2VtZW50LkF1dG9tYXRpb24uUFNDcmVkZW50aWFsKCRkb21haW5Vc2VybmFtZSwgJGRvbWFpblBhc3N3b3JkKQ0KDQojIERlZmluZSB0aGUgZG9tYWluIGNvbnRyb2xsZXIgaG9zdG5hbWUgYW5kIGRvbWFpbiBuYW1lDQokZG9tYWluQ29udHJvbGxlckhvc3RuYW1lID0gImRjIg0KJGRvbWFpbk5hbWUgPSAiYXN0ZXIubG9jYWwiDQoNCiMgSm9pbiB0aGUgc2VydmVyIHRvIHRoZSBkb21haW4NCkFkZC1Db21wdXRlciAtRG9tYWluTmFtZSAkZG9tYWluTmFtZSAtQ3JlZGVudGlhbCAkZG9tYWluQ3JlZCAtU2VydmVyICRkb21haW5Db250cm9sbGVySG9zdG5hbWUgLVJlc3RhcnQNCg0KDQoNCiMgSW5zdGFsbCBSZW1vdGUgRGVza3RvcCBTZXJ2aWNlcyByb2xlIGZvciBTZXNzaW9uIEhvc3QNCkluc3RhbGwtV2luZG93c0ZlYXR1cmUgLU5hbWUgUkRTLVJELVNlcnZlciAtSW5jbHVkZU1hbmFnZW1lbnRUb29scw0KDQojIENvbmZpZ3VyZSBTZXNzaW9uIEhvc3Qgc2V0dGluZ3MNCiRjb25uZWN0aW9uQnJva2VyID0gIjEwLjAuNS42IiAjIFJlcGxhY2Ugd2l0aCB5b3VyIFJEIENvbm5lY3Rpb24gQnJva2VyIHNlcnZlcidzIGhvc3RuYW1lIG9yIElQIGFkZHJlc3MNClNldC1SRFNlc3Npb25Ib3N0IC1Db25uZWN0aW9uQnJva2VyICRjb25uZWN0aW9uQnJva2VyIC1BY2NlcHRDb25uZWN0aW9ucyAiVHJ1ZSINCg0KIyBSZXN0YXJ0IFJlbW90ZSBEZXNrdG9wIFNlcnZpY2VzIGZvciB0aGUgY2hhbmdlcyB0byB0YWtlIGVmZmVjdA0KUmVzdGFydC1TZXJ2aWNlIFRlcm1TZXJ2aWNlIC1Gb3JjZQ0KDQo=')) | Out-File -filepath session_host_setup_script.ps1\" && powershell -ExecutionPolicy Unrestricted -File session_host_setup_script.ps1"

             }
        EOT
      + type                        = "CustomScriptExtension"
      + type_handler_version        = "1.9"
      + virtual_machine_id          = (known after apply)
    }

  # azurerm_virtual_network.myvnet will be created
  + resource "azurerm_virtual_network" "myvnet" {
      + address_space       = [
          + "10.0.0.0/16",
        ]
      + dns_servers         = (known after apply)
      + guid                = (known after apply)
      + id                  = (known after apply)
      + location            = "westeurope"
      + name                = "Aster-vnet"
      + resource_group_name = "Aster-rg"
      + subnet              = (known after apply)
    }

  # azurerm_windows_virtual_machine.srv[0] will be created
  + resource "azurerm_windows_virtual_machine" "srv" {
      + admin_password                                         = (sensitive value)
      + admin_username                                         = "vQ8aMdrny9RJ"
      + allow_extension_operations                             = true
      + bypass_platform_safety_checks_on_user_schedule_enabled = false
      + computer_name                                          = (known after apply)
      + enable_automatic_updates                               = true
      + extensions_time_budget                                 = "PT1H30M"
      + hotpatching_enabled                                    = false
      + id                                                     = (known after apply)
      + location                                               = "westeurope"
      + max_bid_price                                          = -1
      + name                                                   = "Aster-vm-0"
      + network_interface_ids                                  = (known after apply)
      + patch_assessment_mode                                  = "ImageDefault"
      + patch_mode                                             = "AutomaticByOS"
      + platform_fault_domain                                  = -1
      + priority                                               = "Regular"
      + private_ip_address                                     = (known after apply)
      + private_ip_addresses                                   = (known after apply)
      + provision_vm_agent                                     = true
      + public_ip_address                                      = (known after apply)
      + public_ip_addresses                                    = (known after apply)
      + resource_group_name                                    = "Aster-rg"
      + size                                                   = "Standard_DS2_v2"
      + virtual_machine_id                                     = (known after apply)

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }

      + source_image_reference {
          + offer     = "WindowsServer"
          + publisher = "MicrosoftWindowsServer"
          + sku       = "2019-Datacenter"
          + version   = "latest"
        }
    }

  # azurerm_windows_virtual_machine.srv[1] will be created
  + resource "azurerm_windows_virtual_machine" "srv" {
      + admin_password                                         = (sensitive value)
      + admin_username                                         = "vQ8aMdrny9RJ"
      + allow_extension_operations                             = true
      + bypass_platform_safety_checks_on_user_schedule_enabled = false
      + computer_name                                          = (known after apply)
      + enable_automatic_updates                               = true
      + extensions_time_budget                                 = "PT1H30M"
      + hotpatching_enabled                                    = false
      + id                                                     = (known after apply)
      + location                                               = "westeurope"
      + max_bid_price                                          = -1
      + name                                                   = "Aster-vm-1"
      + network_interface_ids                                  = (known after apply)
      + patch_assessment_mode                                  = "ImageDefault"
      + patch_mode                                             = "AutomaticByOS"
      + platform_fault_domain                                  = -1
      + priority                                               = "Regular"
      + private_ip_address                                     = (known after apply)
      + private_ip_addresses                                   = (known after apply)
      + provision_vm_agent                                     = true
      + public_ip_address                                      = (known after apply)
      + public_ip_addresses                                    = (known after apply)
      + resource_group_name                                    = "Aster-rg"
      + size                                                   = "Standard_DS2_v2"
      + virtual_machine_id                                     = (known after apply)

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }

      + source_image_reference {
          + offer     = "WindowsServer"
          + publisher = "MicrosoftWindowsServer"
          + sku       = "2019-Datacenter"
          + version   = "latest"
        }
    }

  # azurerm_windows_virtual_machine.srv[2] will be created
  + resource "azurerm_windows_virtual_machine" "srv" {
      + admin_password                                         = (sensitive value)
      + admin_username                                         = "vQ8aMdrny9RJ"
      + allow_extension_operations                             = true
      + bypass_platform_safety_checks_on_user_schedule_enabled = false
      + computer_name                                          = (known after apply)
      + enable_automatic_updates                               = true
      + extensions_time_budget                                 = "PT1H30M"
      + hotpatching_enabled                                    = false
      + id                                                     = (known after apply)
      + location                                               = "westeurope"
      + max_bid_price                                          = -1
      + name                                                   = "Aster-vm-2"
      + network_interface_ids                                  = (known after apply)
      + patch_assessment_mode                                  = "ImageDefault"
      + patch_mode                                             = "AutomaticByOS"
      + platform_fault_domain                                  = -1
      + priority                                               = "Regular"
      + private_ip_address                                     = (known after apply)
      + private_ip_addresses                                   = (known after apply)
      + provision_vm_agent                                     = true
      + public_ip_address                                      = (known after apply)
      + public_ip_addresses                                    = (known after apply)
      + resource_group_name                                    = "Aster-rg"
      + size                                                   = "Standard_DS2_v2"
      + virtual_machine_id                                     = (known after apply)

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }

      + source_image_reference {
          + offer     = "WindowsServer"
          + publisher = "MicrosoftWindowsServer"
          + sku       = "2019-Datacenter"
          + version   = "latest"
        }
    }

Plan: 18 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  ~ vm_ips           = [
      - [
          - "10.0.5.5",
          - "10.0.5.6",
          - "10.0.5.4",
        ],
      + [
          + (known after apply),
          + (known after apply),
          + (known after apply),
        ],
    ]

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_resource_group.techtaskaster: Creating...
azurerm_resource_group.techtaskaster: Creation complete after 1s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg]
azurerm_network_security_group.nsg: Creating...
azurerm_public_ip.puip: Creating...
azurerm_public_ip.externalip[1]: Creating...
azurerm_virtual_network.myvnet: Creating...
azurerm_public_ip.externalip[2]: Creating...
azurerm_public_ip.externalip[0]: Creating...
azurerm_network_security_group.nsg: Creation complete after 3s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkSecurityGroups/Aster-nsg]
azurerm_public_ip.externalip[1]: Creation complete after 3s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-pip-1]
azurerm_public_ip.puip: Creation complete after 3s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-lb-public-ip]
azurerm_lb.las: Creating...
azurerm_public_ip.externalip[2]: Creation complete after 3s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-pip-2]
azurerm_public_ip.externalip[0]: Creation complete after 3s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-pip-0]
azurerm_lb.las: Creation complete after 2s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/loadBalancers/Aster-lb]
azurerm_virtual_network.myvnet: Creation complete after 5s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/virtualNetworks/Aster-vnet]
azurerm_subnet.mynet: Creating...
azurerm_subnet.mynet: Creation complete after 5s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/virtualNetworks/Aster-vnet/subnets/Aster-subnet]
azurerm_network_interface.nic[0]: Creating...
azurerm_network_interface.nic[1]: Creating...
azurerm_network_interface.nic[2]: Creating...
azurerm_network_interface.nic[0]: Still creating... [10s elapsed]
azurerm_network_interface.nic[2]: Still creating... [10s elapsed]
azurerm_network_interface.nic[1]: Still creating... [10s elapsed]
azurerm_network_interface.nic[2]: Creation complete after 13s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkInterfaces/Aster-nic-2]
azurerm_network_interface.nic[0]: Still creating... [20s elapsed]
azurerm_network_interface.nic[1]: Still creating... [20s elapsed]
azurerm_network_interface.nic[1]: Creation complete after 26s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkInterfaces/Aster-nic-1]
azurerm_network_interface.nic[0]: Still creating... [30s elapsed]
azurerm_network_interface.nic[0]: Creation complete after 39s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkInterfaces/Aster-nic-0]
azurerm_windows_virtual_machine.srv[2]: Creating...
azurerm_windows_virtual_machine.srv[0]: Creating...
azurerm_windows_virtual_machine.srv[1]: Creating...
azurerm_windows_virtual_machine.srv[0]: Still creating... [10s elapsed]
azurerm_windows_virtual_machine.srv[2]: Still creating... [10s elapsed]
azurerm_windows_virtual_machine.srv[1]: Still creating... [10s elapsed]
azurerm_windows_virtual_machine.srv[0]: Still creating... [20s elapsed]
azurerm_windows_virtual_machine.srv[1]: Still creating... [20s elapsed]
azurerm_windows_virtual_machine.srv[2]: Still creating... [20s elapsed]
azurerm_windows_virtual_machine.srv[2]: Still creating... [30s elapsed]
azurerm_windows_virtual_machine.srv[0]: Still creating... [30s elapsed]
azurerm_windows_virtual_machine.srv[1]: Still creating... [30s elapsed]
azurerm_windows_virtual_machine.srv[1]: Still creating... [40s elapsed]
azurerm_windows_virtual_machine.srv[2]: Still creating... [40s elapsed]
azurerm_windows_virtual_machine.srv[0]: Still creating... [40s elapsed]
azurerm_windows_virtual_machine.srv[0]: Still creating... [50s elapsed]
azurerm_windows_virtual_machine.srv[1]: Still creating... [50s elapsed]
azurerm_windows_virtual_machine.srv[2]: Still creating... [50s elapsed]
azurerm_windows_virtual_machine.srv[2]: Still creating... [1m0s elapsed]
azurerm_windows_virtual_machine.srv[1]: Still creating... [1m0s elapsed]
azurerm_windows_virtual_machine.srv[0]: Still creating... [1m0s elapsed]
azurerm_windows_virtual_machine.srv[2]: Creation complete after 1m6s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-2]
azurerm_windows_virtual_machine.srv[0]: Creation complete after 1m6s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-0]
azurerm_virtual_machine_extension.srv0: Creating...
azurerm_windows_virtual_machine.srv[1]: Still creating... [1m10s elapsed]
azurerm_virtual_machine_extension.srv0: Still creating... [10s elapsed]
azurerm_windows_virtual_machine.srv[1]: Still creating... [1m20s elapsed]
azurerm_virtual_machine_extension.srv0: Still creating... [20s elapsed]
azurerm_windows_virtual_machine.srv[1]: Still creating... [1m30s elapsed]
azurerm_windows_virtual_machine.srv[1]: Creation complete after 1m35s [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-1]
azurerm_virtual_machine_extension.srv0: Still creating... [30s elapsed]
azurerm_virtual_machine_extension.srv0: Still creating... [40s elapsed]
azurerm_virtual_machine_extension.srv0: Still creating... [50s elapsed]
azurerm_virtual_machine_extension.srv0: Still creating... [1m0s elapsed]
╷
│ Error: Code="VMExtensionProvisioningError" Message="VM has reported a failure when processing extension 'dc' (publisher 'Microsoft.Compute' and type 'CustomScriptExtension'). Error message: \"Finished executing command\". More information on troubleshooting 
is available at https://aka.ms/VMExtensionCSEWindowsTroubleshoot. "
│
│   with azurerm_virtual_machine_extension.srv0,
│   on main.tf line 104, in resource "azurerm_virtual_machine_extension" "srv0":
│  104: resource "azurerm_virtual_machine_extension" "srv0" {
│
╵
PS C:\Users\Erinda\Documents\GitHub\techtask1> terraform apply
random_string.windows_username: Refreshing state... [id=vQ8aMdrny9RJ]
random_password.windows_password: Refreshing state... [id=none]
data.template_file.dc: Reading...
data.template_file.rds: Reading...
data.template_file.sessions: Reading...
data.template_file.sessions: Read complete after 0s [id=27428d80864ffb169f66cbf7e2ec161d54de8b72b4e031d5c79ac6566ae16607]
data.template_file.rds: Read complete after 0s [id=e1753ee9c1dac24339aeab23996bf4b19c394a5c1905c6405553a4efbfde2435]
data.template_file.dc: Read complete after 0s [id=504798ca0a8996c3ee13be960175fdf73aaa284742167024602412777f4ee8e1]
azurerm_resource_group.techtaskaster: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg]
azurerm_network_security_group.nsg: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkSecurityGroups/Aster-nsg]
azurerm_public_ip.puip: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-lb-public-ip]
azurerm_virtual_network.myvnet: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/virtualNetworks/Aster-vnet]
azurerm_public_ip.externalip[0]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-pip-0]
azurerm_public_ip.externalip[1]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-pip-1]
azurerm_public_ip.externalip[2]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/publicIPAddresses/Aster-pip-2]
azurerm_lb.las: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/loadBalancers/Aster-lb]
azurerm_subnet.mynet: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/virtualNetworks/Aster-vnet/subnets/Aster-subnet]
azurerm_network_interface.nic[0]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkInterfaces/Aster-nic-0]
azurerm_network_interface.nic[1]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkInterfaces/Aster-nic-1]
azurerm_network_interface.nic[2]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Network/networkInterfaces/Aster-nic-2]
azurerm_windows_virtual_machine.srv[1]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-1]
azurerm_windows_virtual_machine.srv[2]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-2]
azurerm_windows_virtual_machine.srv[0]: Refreshing state... [id=/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-0]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following 
symbols:
  + create

Terraform will perform the following actions:

  # azurerm_virtual_machine_extension.srv0 will be created
  + resource "azurerm_virtual_machine_extension" "srv0" {
      + failure_suppression_enabled = false
      + id                          = (known after apply)
      + name                        = "dc"
      + publisher                   = "Microsoft.Compute"
      + settings                    = <<-EOT
            {
              "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('DQojIGRvbWFpbi1jb250cm9sbGVyLXNldHVwLnBzMQ0KDQojIEluc3RhbGwgQWN0aXZlIERpcmVjdG9yeSBEb21haW4gU2VydmljZXMNCkluc3RhbGwtV2luZG93c0ZlYXR1cmUgLU5hbWUgQUQtRG9tYWluLVNlcnZpY2VzIC1JbmNsdWRlTWFuYWdlbWVudFRvb2xzDQoNCiMgUHJvbW90ZSBzZXJ2ZXIgdG8gRG9tYWluIENvbnRyb2xsZXINCkluc3RhbGwtQUREU0ZvcmVzdCBgDQogICAgLURvbWFpbk5hbWUgImxvY2FsIiBgDQogICAgLVNhZmVNb2RlQWRtaW5pc3RyYXRvclBhc3N3b3JkIChDb252ZXJ0VG8tU2VjdXJlU3RyaW5nIC1Bc1BsYWluVGV4dCAiQXN0ZXIqMjAyMiIgLUZvcmNlKSBgDQogICAgLURvbWFpbk1vZGUgV2luMjAxOSBgDQogICAgLUZvcmVzdE1vZGUgV2luMjAxOSBgDQogICAgLUNyZWF0ZURuc0RlbGVnYXRpb246JGZhbHNlIGANCiAgICAtRGF0YWJhc2VQYXRoICJDOlxXaW5kb3dzXE5URFMiIGANCiAgICAtTG9nUGF0aCAiQzpcV2luZG93c1xOVERTIiBgDQogICAgLVN5c3ZvbFBhdGggIkM6XFdpbmRvd3NcU1lTVk9MIiBgDQogICAgLUZvcmNlOiR0cnVlDQoNCiMgUmVzdGFydCB0aGUgc2VydmVyDQpSZXN0YXJ0LUNvbXB1dGVyIC1Gb3JjZQ0KDQoNCg0KDQojIERlZmluZSB0aGUgY3JlZGVudGlhbHMgZm9yIGpvaW5pbmcgdGhlIGRvbWFpbg0KJGRvbWFpblVzZXJuYW1lID0gdlE4YU1kcm55OVJKDQokZG9tYWluUGFzc3dvcmQgPSBFOE1SSHZbVmp0M0JNWTZSSlZsX1pZV1dIa1dSTEp0YUt7MDBZUGdtIHwgQ29udmVydFRvLVNlY3VyZVN0cmluZyAtQXNQbGFpblRleHQgLUZvcmNlDQokZG9tYWluQ3JlZCA9IE5ldy1PYmplY3QgU3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbi5QU0NyZWRlbnRpYWwoJGRvbWFpblVzZXJuYW1lLCAkZG9tYWluUGFzc3dvcmQpDQoNCiMgRGVmaW5lIHRoZSBkb21haW4gY29udHJvbGxlciBob3N0bmFtZSBhbmQgZG9tYWluIG5hbWUNCiRkb21haW5Db250cm9sbGVySG9zdG5hbWUgPSAiZGMiDQokZG9tYWluTmFtZSA9ICJsb2NhbCINCg0KIyBKb2luIHRoZSBzZXJ2ZXIgdG8gdGhlIGRvbWFpbg0KTmV3LU5ldElQQWRkcmVzcyBJUEFkZHJlc3MgMTAuMC41LjUgLURlZmF1bHRHYXRld2F5IDEwLjAuNS4xIC1QcmVmaXhMZW5ndGggMjQgLUludGVyZmFjZUluZGV4IChHZXQtTmV0QWRhcHRlcikuSW50ZXJmYWNlSW5kZXgNClNldC1ETlNDbGllbnRTZXJ2ZXJBZGRyZXNzIEludGVyZmFjZUluZGV4IChHZXQtTmV0QWRhcHRlcikuSW50ZXJmYWNlSW5kZXggU2VydmVyQWRkcmVzc2VzIDEwLjAuNS4xDQpJbnN0YWxsLVdpbmRvd3NGZWF0dXJlIC1uYW1lIEFELURvbWFpbi1TZXJ2aWNlcyAtSW5jbHVkZU1hbmFnZW1lbnRUb29scw0KQWRkLUNvbXB1dGVyIC1Eb21haW5OYW1lICRkb21haW5OYW1lIC1DcmVkZW50aWFsICRkb21haW5DcmVkIC1TZXJ2ZXIgJGRvbWFpbkNvbnRyb2xsZXJIb3N0bmFtZSAtUmVzdGFydA0KDQojIGRvbWFpbi1qb2luLnBzMQ0KDQojIERlZmluZSBjcmVkZW50aWFscyBhbmQgZG9tYWluIGluZm9ybWF0aW9uDQokYWRtaW5Vc2VybmFtZSA9IHZROGFNZHJueTlSSg0KJGFkbWluUGFzc3dvcmQgPSBDb252ZXJ0VG8tU2VjdXJlU3RyaW5nIC1TdHJpbmcgIjxZb3VyQWRtaW5QYXNzd29yZD4iIC1Bc1BsYWluVGV4dCAtRm9yY2UNCiRkb21haW5OYW1lID0gImxvY2FsIg0KJGRvbWFpblVzZXIgPSB2UThhTWRybnk5UkoNCg0KIyBKb2luaW5nIHRoZSBWTSB0byB0aGUgZG9tYWluDQokY3JlZGVudGlhbCA9IE5ldy1PYmplY3QgU3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbi5QU0NyZWRlbnRpYWwgKCRkb21haW5Vc2VyLCAkYWRtaW5QYXNzd29yZCkNCg0KIyBQZXJmb3JtIHRoZSBkb21haW4gam9pbiBvcGVyYXRpb24NCnRyeSB7DQogICAgQWRkLUNvbXB1dGVyIC1Eb21haW5OYW1lICRkb21haW5OYW1lIC1DcmVkZW50aWFsICRjcmVkZW50aWFsIC1SZXN0YXJ0IC1Gb3JjZSAtRXJyb3JBY3Rpb24gU3RvcA0KICAgIFdyaXRlLU91dHB1dCAiU3VjY2Vzc2Z1bGx5IGpvaW5lZCB0aGUgVk0gdG8gdGhlIGRvbWFpbi4iDQp9IGNhdGNoIHsNCiAgICBXcml0ZS1FcnJvciAiRmFpbGVkIHRvIGpvaW4gdGhlIFZNIHRvIHRoZSBkb21haW4uICRfIg0KICAgIGV4aXQgMQ0KfQ0K')) | Out-File -filepath domain-join.ps1\" && powershell -ExecutionPolicy Unrestricted -File domain-join.ps1"
             }
        EOT
      + type                        = "CustomScriptExtension"
      + type_handler_version        = "1.9"
      + virtual_machine_id          = "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-0"
    }

  # azurerm_virtual_machine_extension.srv1 will be created
  + resource "azurerm_virtual_machine_extension" "srv1" {
      + failure_suppression_enabled = false
      + id                          = (known after apply)
      + name                        = "rds"
      + publisher                   = "Microsoft.Compute"
      + settings                    = <<-EOT
            {
                "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IyBEZWZpbmUgdGhlIGNyZWRlbnRpYWxzIGZvciBqb2luaW5nIHRoZSBkb21haW4NCiRkb21haW5Vc2VybmFtZSA9IHZROGFNZHJueTlSSg0KJGRvbWFpblBhc3N3b3JkID0gRThNUkh2W1ZqdDNCTVk2UkpWbF9aWVdXSGtXUkxKdGFLezAwWVBnbSB8IENvbnZlcnRUby1TZWN1cmVTdHJpbmcgLUFzUGxhaW5UZXh0IC1Gb3JjZQ0KJGRvbWFpbkNyZWQgPSBOZXctT2JqZWN0IFN5c3RlbS5NYW5hZ2VtZW50LkF1dG9tYXRpb24uUFNDcmVkZW50aWFsKCRkb21haW5Vc2VybmFtZSwgJGRvbWFpblBhc3N3b3JkKQ0KDQojIERlZmluZSB0aGUgZG9tYWluIGNvbnRyb2xsZXIgaG9zdG5hbWUgYW5kIGRvbWFpbiBuYW1lDQokZG9tYWluQ29udHJvbGxlckhvc3RuYW1lID0gImRjIg0KJGRvbWFpbk5hbWUgPSAiYXN0ZXIubG9jYWwiDQoNCiMgSm9pbiB0aGUgc2VydmVyIHRvIHRoZSBkb21haW4NCkFkZC1Db21wdXRlciAtRG9tYWluTmFtZSAkZG9tYWluTmFtZSAtQ3JlZGVudGlhbCAkZG9tYWluQ3JlZCAtU2VydmVyICRkb21haW5Db250cm9sbGVySG9zdG5hbWUgLVJlc3RhcnQNCg0KDQoNCiMgSW5zdGFsbCBSZW1vdGUgRGVza3RvcCBTZXJ2aWNlcyByb2xlcyBmb3IgUkQgV2ViLCBSRCBCcm9rZXIsIGFuZCBSRCBHYXRld2F5DQpJbnN0YWxsLVdpbmRvd3NGZWF0dXJlIC1OYW1lIFJEUy1XZWItQWNjZXNzLCBSRFMtQ29ubmVjdGlvbi1Ccm9rZXIsIFJEUy1HYXRld2F5IC1JbmNsdWRlTWFuYWdlbWVudFRvb2xzDQoNCiMgQ29uZmlndXJlIFJEIFdlYiBBY2Nlc3MNCiRyZHdhU2VydmVyID0gIjEyNy4wLjAuMSIgIyBSZXBsYWNlIHdpdGggeW91ciBSRCBXZWIgQWNjZXNzIHNlcnZlcidzIGhvc3RuYW1lIG9yIElQIGFkZHJlc3MNClNldC1SRFdlYkFjY2Vzc0NvbmZpZ3VyYXRpb24gLVNlcnZlciAkcmR3YVNlcnZlciAtQ2VydEhhc2ggJHJkd2FDb2RlU2lnbmluZ0NlcnRpZmljYXRlVGh1bWJwcmludA0KDQojIENvbmZpZ3VyZSBSRCBDb25uZWN0aW9uIEJyb2tlcg0KJHJkYlNlcnZlciA9ICIxMjcuMC4wLjEiICMgUmVwbGFjZSB3aXRoIHlvdXIgUkQgQ29ubmVjdGlvbiBCcm9rZXIgc2VydmVyJ3MgaG9zdG5hbWUgb3IgSVAgYWRkcmVzcw0KU2V0LVJEU2VydmVyIC1Sb2xlIFJEUy1Db25uZWN0aW9uLUJyb2tlciAtQ29ubmVjdGlvbkJyb2tlciAkcmRiU2VydmVyDQoNCiMgQ29uZmlndXJlIFJEIEdhdGV3YXkNCiRyZGdTZXJ2ZXIgPSAiMTI3LjAuMC4xIiAjIFJlcGxhY2Ugd2l0aCB5b3VyIFJEIEdhdGV3YXkgc2VydmVyJ3MgaG9zdG5hbWUgb3IgSVAgYWRkcmVzcw0KU2V0LVJER2F0ZXdheUNvbmZpZ3VyYXRpb24gLUdhdGV3YXlTZXJ2ZXIgJHJkZ1NlcnZlciAtU1NMQ2VydGlmaWNhdGVTSEExSGFzaCAkcmRnU1NMVGh1bWJwcmludA0KDQojIFJlc3RhcnQgUmVtb3RlIERlc2t0b3AgU2VydmljZXMgZm9yIHRoZSBjaGFuZ2VzIHRvIHRha2UgZWZmZWN0DQpSZXN0YXJ0LVNlcnZpY2UgVGVybVNlcnZpY2UgLUZvcmNlDQo=')) | Out-File -filepath rd_server_setup_script.ps1\" && powershell -ExecutionPolicy Unrestricted -File rd_server_setup_script.ps1"

             }
        EOT
      + type                        = "CustomScriptExtension"
      + type_handler_version        = "1.9"
      + virtual_machine_id          = "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-1"
    }

  # azurerm_virtual_machine_extension.srv2 will be created
  + resource "azurerm_virtual_machine_extension" "srv2" {
      + failure_suppression_enabled = false
      + id                          = (known after apply)
      + name                        = "sessions"
      + publisher                   = "Microsoft.Compute"
      + settings                    = <<-EOT
            {
                  "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IyBEZWZpbmUgdGhlIGNyZWRlbnRpYWxzIGZvciBqb2luaW5nIHRoZSBkb21haW4NCiRkb21haW5Vc2VybmFtZSA9IHZROGFNZHJueTlSSg0KJGRvbWFpblBhc3N3b3JkID0gRThNUkh2W1ZqdDNCTVk2UkpWbF9aWVdXSGtXUkxKdGFLezAwWVBnbSB8IENvbnZlcnRUby1TZWN1cmVTdHJpbmcgLUFzUGxhaW5UZXh0IC1Gb3JjZQ0KJGRvbWFpbkNyZWQgPSBOZXctT2JqZWN0IFN5c3RlbS5NYW5hZ2VtZW50LkF1dG9tYXRpb24uUFNDcmVkZW50aWFsKCRkb21haW5Vc2VybmFtZSwgJGRvbWFpblBhc3N3b3JkKQ0KDQojIERlZmluZSB0aGUgZG9tYWluIGNvbnRyb2xsZXIgaG9zdG5hbWUgYW5kIGRvbWFpbiBuYW1lDQokZG9tYWluQ29udHJvbGxlckhvc3RuYW1lID0gImRjIg0KJGRvbWFpbk5hbWUgPSAiYXN0ZXIubG9jYWwiDQoNCiMgSm9pbiB0aGUgc2VydmVyIHRvIHRoZSBkb21haW4NCkFkZC1Db21wdXRlciAtRG9tYWluTmFtZSAkZG9tYWluTmFtZSAtQ3JlZGVudGlhbCAkZG9tYWluQ3JlZCAtU2VydmVyICRkb21haW5Db250cm9sbGVySG9zdG5hbWUgLVJlc3RhcnQNCg0KDQoNCiMgSW5zdGFsbCBSZW1vdGUgRGVza3RvcCBTZXJ2aWNlcyByb2xlIGZvciBTZXNzaW9uIEhvc3QNCkluc3RhbGwtV2luZG93c0ZlYXR1cmUgLU5hbWUgUkRTLVJELVNlcnZlciAtSW5jbHVkZU1hbmFnZW1lbnRUb29scw0KDQojIENvbmZpZ3VyZSBTZXNzaW9uIEhvc3Qgc2V0dGluZ3MNCiRjb25uZWN0aW9uQnJva2VyID0gIjEwLjAuNS42IiAjIFJlcGxhY2Ugd2l0aCB5b3VyIFJEIENvbm5lY3Rpb24gQnJva2VyIHNlcnZlcidzIGhvc3RuYW1lIG9yIElQIGFkZHJlc3MNClNldC1SRFNlc3Npb25Ib3N0IC1Db25uZWN0aW9uQnJva2VyICRjb25uZWN0aW9uQnJva2VyIC1BY2NlcHRDb25uZWN0aW9ucyAiVHJ1ZSINCg0KIyBSZXN0YXJ0IFJlbW90ZSBEZXNrdG9wIFNlcnZpY2VzIGZvciB0aGUgY2hhbmdlcyB0byB0YWtlIGVmZmVjdA0KUmVzdGFydC1TZXJ2aWNlIFRlcm1TZXJ2aWNlIC1Gb3JjZQ0KDQo=')) | Out-File -filepath session_host_setup_script.ps1\" && powershell -ExecutionPolicy Unrestricted -File session_host_setup_script.ps1"

             }
        EOT
      + type                        = "CustomScriptExtension"
      + type_handler_version        = "1.9"
      + virtual_machine_id          = "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-2"
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_virtual_machine_extension.srv0: Creating...
╷
│ Error: A resource with the ID "/subscriptions/e1e9a762-a932-4469-bd95-2a5188bd5b50/resourceGroups/Aster-rg/providers/Microsoft.Compute/virtualMachines/Aster-vm-0/extensions/dc" already exists - to be managed via Terraform this resource needs to be imported into the State. Please see the resource documentation for "azurerm_virtual_machine_extension" for more information.
│
│   with azurerm_virtual_machine_extension.srv0,
│   on main.tf line 104, in resource "azurerm_virtual_machine_extension" "srv0":
│  104: resource "azurerm_virtual_machine_extension" "srv0" {
│
╵



resource "azurerm_resource_group" "techtaskaster" {
  name     = "${var.prefix}-rg"
  location = var.location
}

resource "azurerm_virtual_network" "myvnet" {
  name                = "${var.prefix}-vnet"
  resource_group_name = azurerm_resource_group.techtaskaster.name
  location            = azurerm_resource_group.techtaskaster.location
  address_space       = ["10.0.0.0/16"]

}
resource "azurerm_subnet" "mynet" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = azurerm_resource_group.techtaskaster.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes     = ["10.0.5.0/24"]
}

resource "azurerm_network_security_group" "nsg" {
  name                = "${var.prefix}-nsg"
  location            = azurerm_resource_group.techtaskaster.location
  resource_group_name = azurerm_resource_group.techtaskaster.name
}
resource "azurerm_public_ip" "externalip" {
  count               = var.vm_count
  name                = "${var.prefix}-pip-${count.index}"
  location            = azurerm_resource_group.techtaskaster.location
  resource_group_name = azurerm_resource_group.techtaskaster.name
  allocation_method   = "Dynamic"
}
resource "azurerm_network_interface" "nic" {
  count               = var.vm_count
  name                = "${var.prefix}-nic-${count.index}"
  location            = azurerm_resource_group.techtaskaster.location
  resource_group_name = azurerm_resource_group.techtaskaster.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mynet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.externalip[count.index].id
  }

}
resource "random_password" "windows_password" {
  length  = 40
  special = true
}

resource "random_string" "windows_username" {
  length  = 12
  special = false
}
resource "azurerm_windows_virtual_machine" "srv" {
  count                 = var.vm_count
  name                  = "${var.prefix}-vm-${count.index}"
  location              = azurerm_resource_group.techtaskaster.location
  resource_group_name   = azurerm_resource_group.techtaskaster.name
  network_interface_ids = [azurerm_network_interface.nic[count.index].id]
  size                  = var.vm_size
  admin_username        = random_string.windows_username.result

  admin_password = random_password.windows_password.result
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}

resource "azurerm_lb" "las" {
  name                = "${var.prefix}-lb"
  location            = azurerm_resource_group.techtaskaster.location
  resource_group_name = azurerm_resource_group.techtaskaster.name
  frontend_ip_configuration {
    name                 = "public"
    public_ip_address_id = azurerm_public_ip.puip.id
  }
}

resource "azurerm_public_ip" "puip" {
  name                = "${var.prefix}-lb-public-ip"
  location            = azurerm_resource_group.techtaskaster.location
  resource_group_name = azurerm_resource_group.techtaskaster.name
  allocation_method   = "Dynamic"
}


data "template_file" "dc" {
  template = file("domain-join.ps1")
  vars = {
    adminusername = random_string.windows_username.result
    adminpassword = random_password.windows_password.result
  }
}


resource "azurerm_virtual_machine_extension" "srv0" {
  name                 = "dc"
  virtual_machine_id   = azurerm_windows_virtual_machine.srv[0].id
  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.9"

  settings = <<SETTINGS
 {
  "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('${base64encode(data.template_file.dc.rendered)}')) | Out-File -filepath domain-join.ps1\" && powershell -ExecutionPolicy Unrestricted -File domain-join.ps1"
   "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('${base64encode(data.template_file.rds.rendered)}')) | Out-File -filepath rd_server_setup_script.ps1\" && powershell -ExecutionPolicy Unrestricted -File rd_server_setup_script.ps1"

 }
SETTINGS

}

data "template_file" "rds" {
  template = file("rd_server_setup_script.ps1")
  vars = {
    adminusername = random_string.windows_username.result
    adminpassword = random_password.windows_password.result
  }
}
resource "azurerm_virtual_machine_extension" "srv1" {
  name                 = "rds"
  virtual_machine_id   = azurerm_windows_virtual_machine.srv[1].id
  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.9"

  settings = <<SETTINGS
 {
    "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('${base64encode(data.template_file.rds.rendered)}')) | Out-File -filepath rd_server_setup_script.ps1\" && powershell -ExecutionPolicy Unrestricted -File rd_server_setup_script.ps1"

 }
SETTINGS

  depends_on = [
    azurerm_virtual_machine_extension.srv0,

  ]
}

data "template_file" "sessions" {
  template = file("session_host_setup_script.ps1")
  vars = {
    adminusername = random_string.windows_username.result
    adminpassword = random_password.windows_password.result
  }
}


resource "azurerm_virtual_machine_extension" "srv2" {
  name                 = "sessions"
  virtual_machine_id   = azurerm_windows_virtual_machine.srv[2].id
  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.9"

  settings = <<SETTINGS
 {
  "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('${base64encode(data.template_file.sessions.rendered)}')) | Out-File -filepath session_host_setup_script.ps1\" && powershell -ExecutionPolicy Unrestricted -File session_host_setup_script.ps1"
 
 }
SETTINGS

  depends_on = [
    azurerm_virtual_machine_extension.srv0,
    azurerm_virtual_machine_extension.srv1,

  ]
}
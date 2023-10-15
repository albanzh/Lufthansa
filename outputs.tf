output "vm_ips" {
  value = [azurerm_windows_virtual_machine.srv[*].private_ip_address]
}
output "windows_username" {
  value     = random_string.windows_username.result
  sensitive = true
}

output "windows_password" {
  value     = random_password.windows_password.result
  sensitive = true
}


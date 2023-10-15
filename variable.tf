# variable.tf


variable "prefix" {
  description = "Prefix to be used for distinguishing resources"
  type        = string
}
variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "West Europe"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_space" {
  description = "Address space for the Subnet"
  type        = list(string)
  default     = ["10.0.5.0/24"]
}

variable "vm_count" {
  description = "Number of Windows Server 2019 VMs to create"
  type        = number
  default     = 3
}


variable "vm_size" {
  description = "Azure VM size for Windows VMs"
  type        = string
  default     = "Standard_DS2_v2"
}




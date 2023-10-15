terraform {
  backend "azurerm" {
    resource_group_name  = "juve-state"
    storage_account_name = "juvefstate"
    container_name       = "juve-state"
    key                  = "Erinda/Documents/GitHub/techtask1/terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.75.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5.1"
    }
  }
}

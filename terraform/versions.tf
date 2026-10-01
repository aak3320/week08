terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
  backend "azurerm" {
        resource_group_name  = "week8"
        storage_account_name = "week8001"
        container_name       = "tfstate"
        key                  = "week8.tfstate"
    }
}

provider "azurerm" {
  features {}
}
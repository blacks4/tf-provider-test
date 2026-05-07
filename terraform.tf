terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "2.9.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "5.9.0"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.111.0"
    }
    aap = {
      source  = "ansible/aap"
      version = "1.5.0"
    }
    ansible = {
      source  = "ansible/ansible"
      version = "1.4.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}

provider "azapi" {
  # Configuration options
}

provider "vault" {
  # Configuration options
}

provider "hcp" {
  # Configuration options
}

provider "aap" {
  # Configuration options
}

provider "ansible" {
  # Configuration options
}

# Terraform Block
terraform {
  required_version = " latest"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "lastest" 
    }
    random = {
      source = "hashicorp/random"
      version = "latest"
    }
    null = {
      source = "hashicorp/null"
      version = "latest"
    }    
  }
# Terraform State Storage to Azure Storage Container (Values will be taken from Azure DevOps)
  backend "azurerm" {
    resource_group_name = "terraform-storage-rg"
    storage_account_name = "terraformstate2011"
    container_name = "tfstatefiles"
    key = "dev-terraform.tfstate"

  }   
}

# Provider Block
provider "azurerm" {
 features {}          
}



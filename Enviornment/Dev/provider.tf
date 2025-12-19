terraform {
  required_version = ">=1.1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.50.0"
    }
  }
}

provider "azurerm" {
    features {
        resource_group {
            prevent_deletion_if_contains_resources = true
        }
    }
  subscription_id = "b6571c78-f766-4999-8358-e9602abe50cf"
}


terraform {
    backend "azurerm" {
        resource_group_name = "sanjayrg"
        storage_account_name = "sanaytoy"
        container_name = "sanjaycontainer"
        key = "terraform.tfstate"
    }
}


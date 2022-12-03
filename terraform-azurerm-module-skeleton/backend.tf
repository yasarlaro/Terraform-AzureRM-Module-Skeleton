terraform {
  backend "azurerm" {
    resource_group_name  = "xxx"
    storage_account_name = "xxx"
    container_name       = "tfstate"
    key                  = "xxx.xxx.tfstate"
  }
}

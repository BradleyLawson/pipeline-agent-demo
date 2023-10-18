resource "azurerm_resource_group" "pipelineagent" {
  name     = "bdl-rg"
  location = var.location
}

terraform {
  backend "azurerm" {
    resource_group_name   = "bdl-rg"
    storage_account_name  = "bdlrgstorage"
    container_name        = "bdlrgstoragecontainer"
    key = "my-infrastructure.tfstate"
  }
}

resource "azurerm_virtual_network" "pipelineagent" {
  name                = "bdl-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.pipelineagent.name
}

resource "azurerm_subnet" "pipelineagent" {
  name                 = "bdl-subnet"
  resource_group_name  = azurerm_resource_group.pipelineagent.name
  virtual_network_name = azurerm_virtual_network.pipelineagent.name
  address_prefixes     = ["10.0.1.0/24"]
}
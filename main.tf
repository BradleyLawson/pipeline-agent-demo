resource "azurerm_resource_group" "pipelineagent" {
  name     = "bdl-rg"
  location = var.location
}
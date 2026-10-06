resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
  tags     = var.tags
}

output "RGname" {
  value = azurerm_resource_group.rg.name
}

output "location" {
  value = azurerm_resource_group.rg.location
}
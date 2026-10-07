resource "azurerm_container_registry" "name" {
  name                = var.acrname
  resource_group_name = var.rgname
  location            = var.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled
  tags                = var.tags
}
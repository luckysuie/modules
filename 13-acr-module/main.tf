resource "azurerm_container_registry" "acr" {
  name                = var.acrname
  resource_group_name = var.rgname
  location            = var.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled
  tags                = var.tags
}


output "acrname" {
  description = "The ACR name is"
  value = azurerm_container_registry.acr.name
}
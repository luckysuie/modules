resource "azurerm_public_ip" "publicip" {
  name                = var.public_ip_name
  resource_group_name = var.rgname
  location            = var.location
  allocation_method   = var.alloc_method
  sku                 = var.sku
  tags                = var.tags
}
resource "azurerm_storage_account" "storgname" {
  name = var.storageaccname
  resource_group_name = var.rgname
  location = var.location
  account_tier = var.accounttier
  account_replication_type = var.accreplitype
  tags = var.tags
}

output "storageaccname" {
  value = azurerm_storage_account.storgname
}
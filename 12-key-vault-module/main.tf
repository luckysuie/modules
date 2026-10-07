data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
 name = var.keyvaultname
 location = var.location
 resource_group_name = var.rgname
 rbac_authorization_enabled = var.rbac_authorization_enabled
 enabled_for_disk_encryption = var.enabled_for_disk_encryption
 tenant_id = data.azurerm_client_config.current
 soft_delete_retention_days = var.soft_delete_retention_days
 purge_protection_enabled = var.purge_protection_enabled
 sku_name = var.sku

 access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = var.key_permissions
    secret_permissions = var.secret_permissions
    storage_permissions = var.storage_permissions

 }
}

output "keyvaultname" {
  description = "Key vault name"
  value = azurerm_key_vault.kv.name
}

output "kvid" {
  description = "Key vault ID"
  value = azurerm_key_vault.kv.id
}

output "keyvault_uri" {
  description = "This is Key vault URI"
  value = azurerm_key_vault.kv.keyvault_uri
}

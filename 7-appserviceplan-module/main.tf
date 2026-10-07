resource "azurerm_service_plan" "plan" {
  name                = var.app_plan_name
  resource_group_name = var.rgname
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
  tags                = var.tags
}

output "app_plan_name" {
  description = "App Service Plan name"
  value       = azurerm_service_plan.plan.name
}

output "app_plan_id" {
  description = "App Service Plan ID"
  value       = azurerm_service_plan.plan.id
}
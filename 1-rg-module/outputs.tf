output "RGname" {
  description = "Resource group Name"
  value       = azurerm_resource_group.rg.name
}

output "location" {
  description = "Location is"
  value       = azurerm_resource_group.rg.location
}
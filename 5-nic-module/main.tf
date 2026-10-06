resource "azurerm_network_interface" "niccard" {
 name = var.nicname
 location = var.location
 resource_group_name = var.rgname

 ip_configuration {
   name = var.ipconfigname
   subnet_id = var.subnetid
   private_ip_address_allocation = var.privateipalloc
 }
}
resource "azurerm_linux_web_app" "webapp" {
  name                = var.webappname
  resource_group_name = var.rgname
  location            = var.location
  service_plan_id     = var.service_plan_id
  tags                = var.tags

  site_config {
    application_stack {
      dotnet_version      = var.dotnet_version
      java_version        = var.java_version
      java_server         = var.java_server
      java_server_version = var.java_server_version
      node_version        = var.node_version
      php_version         = var.php_version
      python_version      = var.python_version
    }
  }
}
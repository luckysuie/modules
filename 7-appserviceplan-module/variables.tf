variable "rgname" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region for the App Service Plan"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the App Service Plan"
  type        = map(string)
}

variable "app_plan_name" {
  description = "App Service Plan name"
  type        = string
}

variable "os_type" {
  description = "Operating system, such as Linux or Windows"
  type        = string
}

variable "sku_name" {
  description = "App Service Plan SKU, such as B1"
  type        = string
}
variable "rgname" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Location"
  type        = string
}

variable "tags" {
  description = "please enter tags"
  type        = map(string)
}

variable "public_ip_name" {
  description = "Name of the public IP"
  type        = string
}

variable "sku" {
  description = "Provide SKU"
  type        = string
}

variable "alloc_method" {
  description = "Please provide allocation method"
  type        = string
}
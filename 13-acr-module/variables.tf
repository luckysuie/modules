variable "rgname" {
  description = "please enter RG name"
  type        = string
}

variable "location" {
  description = "please enter location"
  type        = string
}

variable "tags" {
  description = "please enter key pair value tags"
  type        = map(string)
}

variable "acrname" {
  description = "please enter ACR name"
  type        = string
}

variable "sku" {
  description = "Please enter SKU"
  type        = string
}

variable "admin_enabled" {
  description = "Please declare this"
  type        = bool
}


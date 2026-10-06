variable "rgname" {
  description = "Name of the resouce group"
  type        = string
}

variable "location" {
  description = "Location of resouce group"
  type        = string
}

variable "tags" {
  description = "please enter key pair tags"
  type        = map(string)
}

variable "vnetname" {
  description = "please enter vnet name"
  type        = string
}

variable "addresspace" {
  description = "please enter address space"
  type        = list(string)
}
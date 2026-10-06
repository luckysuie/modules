variable "rgname" {
  description = "Resource Group"
  type        = string
}

variable "location" {
  description = "Location of resouce group"
  type        = string
}

variable "tags" {
  description = "please enter tags"
  type        = map(string)
}

variable "subnetname" {
  description = "please enter subnet name"
  type        = string
}

variable "vnetname" {
  description = "please enter vnetname"
  type        = string
}

variable "addresprefix" {
  description = "please enter address prefix"
  type        = list(string)
}
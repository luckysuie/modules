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


variable "subnetname" {
  description = "please enter subnetname"
  type        = string
}

variable "addresprefix" {
  description = "please enter address prefix"
  type        = list(string)
}

variable "niccard" {
  description = "please enter nic card name"
  type        = string
}

variable "ipconfigname" {
  description = "please enter ip config name"
  type        = string
}

variable "subnetid" {
  description = "please enter subnet id"
  type        = string
}

variable "privateipalloc" {
  description = "please enter Private ip allocation"
  type        = string
}
variable "rgname" {
  description = "Resouce group name"
  type        = string
}

variable "location" {
  description = "Location "
  type        = string
}

variable "tags" {
  description = "Please enter tag"
  type        = map(string)
}

variable "nicname" {
  description = "Enter Nic name"
  type        = string
}

variable "privateipalloc" {
  description = "Please enter private IP allication"
  type        = string
}

variable "ipconfigname" {
  description = "Please enter Ip Congig name"
  type        = string
}

variable "subnetid" {
  description = "Please provide subnet id"
  type        = string
}
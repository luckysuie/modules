variable "rgname" {
 description = "please enter rgname"
 type = string
}

variable "location" {
  description = "please enter location"
  type = string
}

variable "tags" {
  description = "please enter key pair values"
  type = map(string)
}

variable "storageaccname" {
  description = "Please enter Storage account name"
  type = string
}

variable "accounttier" {
  description = "please enter valid account tier"
  type = string
}

variable "accreplitype" {
  description = "please enter replica type"
  type = string
}
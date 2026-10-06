variable "rgname" {
 description = "Please enter Resource group name"
 type = string
 }

 variable "location" {
 description = "Please enter Valid Location"
 type = string 
 }

variable "tags" {
 description = "Please enter tags in key value pair"
 type = map(string)
 }
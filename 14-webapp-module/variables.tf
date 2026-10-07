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


    variable "webappname" {
    description = "Please enter webapp name"
    type        = string
    }

    variable "service_plan_id" {
    description = "Please enter service plan id"
    type        = string
    }

    variable "dotnet_version" {
    description = "Please enter dotnet version"
    type        = string
    default     = "null"
    }

    variable "java_version" {
    description = "Please enter Java version"
    type        = string
    default     = "null"
    }

    variable "java_server" {
    description = "Please enter Java server"
    type        = string
    default     = "null"
    }

    variable "java_server_version" {
    description = "Please enter Java server version"
    type        = string
    default     = "null"
    }

    variable "node_version" {
    description = "Please enter Node version"
    type        = string
    default     = "null"
    }

    variable "php_version" {
    description = "Please enter PHP version"
    type        = string
    default     = "null"
    }

    variable "python_version" {
    description = "Please enter Python version"
    type        = string
    default     = "null"
    }


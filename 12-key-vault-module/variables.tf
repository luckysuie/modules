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

variable "sku" {
  description = "please enter sku"
  type        = string
}
variable "keyvaultname" {
  description = "please enter key vault name"
  type        = string
}

## rbac_authorization_enabled controls how users and applications get permission to access Key Vault’s secrets, keys, and certificates.
variable "rbac_authorization_enabled" {
  description = "Allow Azure Disk Encryption to access the vault"
  type        = bool
}


## It lets Azure Disk Encryption use the keys and secrets in your Key Vault to encrypt or decrypt VM disks.
variable "enabled_for_disk_encryption" {
  description = "Allow Azure Disk Encryption to access the vault"
  type        = bool
}

variable "soft_delete_retention_days" {
  description = "Retention period for deleted items, between 7 and 90 days"
  type        = number
}

variable "purge_protection_enabled" {
  description = "Enable protection against permanent deletion"
  type        = bool
}

variable "key_permissions" {
  description = "Key permissions granted to the current identity"
  type        = list(string)
}

variable "secret_permissions" {
  description = "Secret permissions granted to the current identity"
  type        = list(string)
}

variable "storage_permissions" {
  description = "Storage permissions granted to the current identity"
  type        = list(string)
}
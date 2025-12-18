variable "rgs" {} 
variable "publicips" {} 
variable "networking" {} 
variable "virtual_machine" {}
variable "key_vault" {}
variable "vault_secret" {}

# variable "key_vault" {
#   type = map(object({
#     name                        = string
#     location                    = string
#     resource_group_name         = string
#     enabled_for_disk_encryption = bool
#     soft_delete_retention_days  = number
#     purge_protection_enabled    = bool
#     sku_name                    = string
#   }))
# }

variable "rgs" {
    type = map(object({
    name = string
    location = string
    managed_by = optional(string)
    tags = optional(map(string))
  }))

} 
variable "publicips" {
    type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = optional(string)
    sku_tier            = optional(string)
  }))
} 

variable "networking" {
    type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    dns_servers         = optional(list(string))
    tags                = optional(map(string))
    subnets = optional(list(object({
      name             = string
      address_prefixes = list(string)
    })), [])
  }))
} 

variable "virtual_machine" {
    type = map(object({
    subnets                       = string
    virtual_network_name          = string
    resource_group_name           = string
    pipname                       = string
    nic                           = string
    location                      = string
    ipname                        = string
    private_ip_address_allocation = string
    vmname                        = string
    size                          = string
    caching                       = string
    storage_account_type          = string
    publisher                     = string
    offer                         = string
    sku                           = string
    version                       = string
    keyvaultname                  = optional(string)
    username                      = optional(string)
    userpassword                  = optional(string)
  }))
}

variable "key_vault" {
    type = map(object({
    name                        = string
    location                    = string
    resource_group_name         = string
    enabled_for_disk_encryption = bool
    soft_delete_retention_days  = number
    purge_protection_enabled    = bool
    sku_name                    = string
  }))
}

variable "vault_secret" {
    type = map(object({
      keyvaultname = string
      resource_group_name = string
      name = string
      value = string
    }))
}


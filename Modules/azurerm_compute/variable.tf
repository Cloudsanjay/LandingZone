variable "compute" {
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

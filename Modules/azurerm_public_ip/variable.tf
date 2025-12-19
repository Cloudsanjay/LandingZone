variable "public_ips" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = optional(string)
    sku_tier            = optional(string)
  }))
}

# variable "pip" {
#   type = map(object({
#     name                = string
#     resource_group_name = string
#     location            = string
#     allocation_method   = string
#   }))
# }
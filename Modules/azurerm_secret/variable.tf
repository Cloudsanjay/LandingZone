variable "secret" {
    type = map(object({
      keyvaultname = string
      resource_group_name = string
      name = string
      value = string
    }))
}
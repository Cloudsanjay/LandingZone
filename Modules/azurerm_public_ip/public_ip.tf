resource "azurerm_public_ip" "pip" {
  for_each            = var.public_ips
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
  sku                 = lookup(each.value, "sku", "Basic")
  sku_tier            = lookup(each.value, "sku_tier", "Regional")

  tags = {
    environment = "Production"
  }
}


# resource "azurerm_public_ip" "pips" {
#   for_each = var.pip
#   name                = each.value.name
#   resource_group_name = each.value.resource_group_name
#   location            = each.value.location
#   allocation_method   = each.value.allocation_method
# }


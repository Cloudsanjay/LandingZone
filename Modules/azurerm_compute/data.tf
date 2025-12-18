data "azurerm_subnet" "dsubnet" {
    for_each = var.compute
  name                 = each.value.subnets
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "dpip" {
    for_each = var.compute
  name                = each.value.pipname
  resource_group_name = each.value.resource_group_name
}


data "azurerm_key_vault" "cdatakv" {
  for_each            = var.compute
  name                = each.value.keyvaultname
  resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault_secret" "cuser" {
  for_each = var.compute
  name         = each.value.username
  key_vault_id = data.azurerm_key_vault.cdatakv[each.key].id
}

data "azurerm_key_vault_secret" "cpassword" {
  for_each = var.compute
  name         = each.value.userpassword
  key_vault_id = data.azurerm_key_vault.cdatakv[each.key].id
}
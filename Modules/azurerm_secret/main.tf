data "azurerm_key_vault" "datakv" {
  for_each            = var.secret
  name                = each.value.keyvaultname
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_key_vault_secret" "secret1" {
  for_each     = var.secret
  name         = each.value.name
  value        = each.value.value
  key_vault_id = data.azurerm_key_vault.datakv[each.key].id
}

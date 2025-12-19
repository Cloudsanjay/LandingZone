module "resource_group" {  
      source = "../../Modules/azurerm_resource_group"
      rgg = var.rgs
          }

module "pipp" {
    depends_on = [ module.resource_group ]
    source = "../../Modules/azurerm_public_ip"
    public_ips = var.publicips
}

module "networks" {
    depends_on = [ module.resource_group]
    source = "../../Modules/azurerm_networks"
    virtual_network = var.networking
}

module "vms" {
    depends_on = [module.networks, module.pipp]
    source = "../../Modules/azurerm_compute"
    compute = var.virtual_machine
}

module "kvs" {
    depends_on = [module.resource_group]
    source = "../../Modules/azurerm_KeyVault"
    keyvault = var.key_vault
}

module "scrts" {
    depends_on = [module.kvs]
    source = "../../Modules/azurerm_secret"
    secret = var.vault_secret
}
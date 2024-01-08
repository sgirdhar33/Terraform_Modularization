## Azure RM resource group data block to fetch resource group information into terraform
data "azurerm_resource_group" "cr_resource_group"{
    name = var.resource_group_name
}

data "azuread_group" "curator_ad_group" {
  display_name = var.curator_ad_group
}

data "azuread_service_principal" "cr_servce_principal" {
  display_name = var.spn_name
}
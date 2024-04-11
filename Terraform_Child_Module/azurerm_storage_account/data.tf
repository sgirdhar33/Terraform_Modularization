##Azure RM resource group data block to fetch resource group information nto terraform

data "azurerm_resource_group" "sa_resource_group" {
    name = var.resource_group_name
}

## Azure AD group data bloc to fetch azure AD group nformation into terraform

data "azuread_group" "curator_ad_group" {
    display_name = var.curator_ad_group
}

##Azure AD service principal data block to fetch azure AD service principal informaton into terraform

data "azuread_service_principal" "service_principal" {
    display_name = var.spn_name
}

##Storage account data block to fetch diagnostic storage account informaton into terraform

data "azurerm_storage_account" "ds_storage_account" {
    name = var.ds_storage_account_name
    resource_group_name = var.ds_sa_resourcegroup_name
}

##Log Analytcs Workspace data bloc to fetch diagnostic log Analytics worspace information into terraform

data "azurerm_log_analytics_workspace" "ds_log_analytcs_workspace"{
    name = var.ds_law_name
    resource_group_name = var.ds_law_resource_group_name
}
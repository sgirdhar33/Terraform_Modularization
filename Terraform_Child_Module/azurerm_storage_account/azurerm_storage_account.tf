#Module to create Azure Storage Account

resource "azurerm_storage_account" "storage_account" {
  count                                        = length(var.storage_account_name)
  name                                         = var.storage_account_name[count.index]
  resource_group_name                          = data.azurerm_resource_group.sa_resource_group.name
  location                                     = var.location
  account_tier                                 = var.account_tier
  account_kind                                 = var.account_kind
  is_hns_enabled                               = var.is_hns_enabled
  account_replication_type                     = var.account_replication_type
  public_public_network_access_enabled         = var.public_public_network_access_enabled
  infrastructure_encryption_enabled            = var.infrastructure_encryption_enabled 
  allow_allow_nested_items_to_be_public        = var.allow_allow_nested_items_to_be_public
  tags                                         = var.tags
  bloblob_properties {
    delete_retention_policy {
        days = var.delete_retention_policy_days
    }
    container_delete_retention_policy{
        days = var.container_delete_retention_policy_days
    }
  }  
  }

# Terraform block to call the storage account module

module "storage_account" {
  source = "/Terraform_Child_Module/azurerm_storage_account"
  count = var.provision_storage_account == true ? 1 : 0
  resource_group_name = var.sa_resource_group_name
  curator_ad_group = var.curator_ad_group
  spn_name = var.spn_name
  storage_account_name = var.storage_account_name
  location = "eastus2"
  account_tier = "Standard"
  account_replication_type = "RAGRS"
  account_kind = "StorageV2"
  is_hns_enabled = "false"
  public_network_access_enabled = "false"
  infrastructure_encryption_enabled = "true"
  allow_nested_items_to_be_public = "false"
  tags = var.tags
  delete_retention_policy_days = "90"
  container_delete_retention_policy_days = "90"
  subnet_id = data.azurerm_subnet.private_endpoint_subnet.id
  
  ##Diagnostic Settings
  ds_storage_account_name = ""
  ds_sa_resource_group_name = ""
  ds_law_name = ""
  ds_law_resource_group_name = ""
}
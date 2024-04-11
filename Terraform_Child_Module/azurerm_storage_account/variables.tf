####################################################
##Data Bloc Variables - data.terraform ##

variable "resource_group_name" {}
variable "curator_ad_group" {}
variable "spn_name" {}
variable "ds_storage_account_name" {}
variable "ds_sa_resourcegroup_name" {}
variable "ds_law_name" {}
variable "ds_law_resource_group_name" {}

###################################################
###################################################

##Storage Account Variables - azurerm_storage_account.tf##
variable "storage_account_name" {}
variable "location" {}
variable "account_tier" {}
variable "account_replication_type" {}
variable "account_kind" {}
variable "is_hns_enabled" {}
variable "public_network_access_enabled" {}
variable "infrastructure_encryption_enabled" {}
variable "allow_allow_nested_items_to_be_public" {}
variable "tags"{}
variable "delete_retention_policy_days" {}
variable "container_delete_retention_policy_days" {}

####################################################
##Storage Account private Endpont Variables - storage_account_blob_private_endpont.tf ##
variable "subnet_id" {}
terraform {
  backend "azurerm" {
    resource_group_name = "terraformtest"
    storage_account_name = "terraformus6sadevtest"
    container_name = "terraform-container"
    key = "terraform/business_units/rd/nodes/dvmt/devtest/data_domain_resources/devtest.tfstate"
  }
}
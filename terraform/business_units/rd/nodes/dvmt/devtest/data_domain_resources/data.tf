data "azurerm_subnet" "private_endpoint_subnet" {
    name = "terraformtest-vnet-subnet"
    virtual_network_name = "terraformtest-vnet"
    resource_group_name = "terraformtest"
  }
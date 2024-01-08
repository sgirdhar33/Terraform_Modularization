module "container_registry" {
    source = "../../../../../modules/azurerm_container_registry"
    count = var.provision_container_registry == true ? 1 : 0
    container_registry_name = var.container_registry_name
    location = "eastus2"
    resource_group_name = var.cr_resource_group_name
    sku_name = "Standard"
    public_network_access_enabled = "false"
    subnet_id = data.azurerm_subnet.private_endpoint_subnet.id
    tags = var.tags
    spn_name = var.spn_name
    curator_ad_group = var.curator_ad_group
}
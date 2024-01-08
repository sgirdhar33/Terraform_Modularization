resource "azurerm_container_registry" "container_registry"{
    count = length(var.container_registry_name)
    name = var.container_registry_name[count.index]
    resource_group_name = data.azurerm_resource_group.cr_resource_group.name
    location = var.location
    sku = var.sku_name
    public_network_access_enabled = var.public_network_access_enabled

}
output "cr_name" {
  value = join(",", azurerm_container_registry.container_registry[*].name)
  description = "The name of the contaner registry"
}
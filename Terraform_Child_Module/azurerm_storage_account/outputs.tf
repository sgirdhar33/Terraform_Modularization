#Output Storage Acoount name

output "sa_name" {
    value = join(",", azurerm_storage_account.storage_account[*].name)
    description = "The name of the Storage account"
}
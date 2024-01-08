variable "location" {}
variable "sku_name" {}
variable "container_registry_name" {}
variable "public_network_access_enabled" {}

variable "subnet_id" {}
variable "tags" {}
variable "cr_roles" {
    type = set(string)
    default = [ "Instance A", "Instance B" ]
}
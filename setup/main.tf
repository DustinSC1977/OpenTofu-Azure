resource "random_pet" "rg_name" {
    prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
    name     = random_pet.rg_name.id
    location = var.resouce_group_location
}

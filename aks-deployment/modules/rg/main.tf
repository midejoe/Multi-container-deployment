resource "azurerm_resource_group" "aksgrp" {
  name     = var.resource_group_name
  location = var.aks_location
}

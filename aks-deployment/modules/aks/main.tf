resource "azurerm_kubernetes_cluster" "aks" {
  count               = length(var.aks_clusters)
  name                = var.aks_clusters[count.index].name
  location            = var.aks_location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.aks_clusters[count.index].name

  default_node_pool {
    name       = var.node_pool_name 
    node_count = var.node_pool_node_count
    vm_size    = var.node_pool_vm_size 
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = var.aks_clusters[count.index].environment
  }
}

resource "azurerm_role_assignment" "acr_role_assignment" {
  count                           = length(azurerm_kubernetes_cluster.aks)
  principal_id                     = azurerm_kubernetes_cluster.aks[count.index].kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = var.acr_id
  skip_service_principal_aad_check = true
}

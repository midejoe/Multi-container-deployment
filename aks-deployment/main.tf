# main.tf

module "rg" {
  source              = "./modules/rg"
  resource_group_name = var.resource_group_name
  aks_location        = var.aks_location
}

module "acr" {
  source              = "./modules/acr"
  acr_name            = var.acr_name
  aks_location        = var.aks_location
  resource_group_name = var.resource_group_name
  depends_on          = [module.rg]
}

module "aks_clusters" {
  source              = "./modules/aks"
  resource_group_name = var.resource_group_name
  aks_location        = var.aks_location

  aks_clusters = var.aks_clusters

  node_pool_name       = var.node_pool_name
  node_pool_node_count = var.node_pool_node_count
  node_pool_vm_size    = var.node_pool_vm_size

  acr_id = module.acr.acr_id

  depends_on = [module.acr]
}



resource_group_name = "aksrg"
aks_location        = "westus"
aks_clusters = [
  { name = "dev", environment = "development" },
  { name = "prod", environment = "production" },
]
node_pool_name       = "nodepool1"
node_pool_node_count = 2
node_pool_vm_size    = "Standard_DS2_v2"
acr_name             = "multiappregistry"

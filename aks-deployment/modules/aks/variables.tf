variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "aks_clusters" {
  description = "A list of AKS clusters to create"
  type        = list(object({
    name       = string
    environment = string
  }))
}

locals {
  aks_cluster_names = [for cluster in var.aks_clusters : cluster.name]
}

variable "aks_location" {
  description = "The Azure region for the AKS cluster"
  type        = string
}

variable "node_pool_name" {
  description = "The name of the default node pool"
  type        = string
}

variable "node_pool_node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
}

variable "node_pool_vm_size" {
  description = "The VM size for the default node pool"
  type        = string
}

variable "acr_id" {
  description = "The id of the acr"
  type        = string
}


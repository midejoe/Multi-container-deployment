variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "aks_location" {
  description = "The Azure region for the AKS cluster"
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}
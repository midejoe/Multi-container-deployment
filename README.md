# Multi-container-deployment 

## Overview
This project focuses on deploying multi-container applications using Terraform for Azure Kubernetes Service (AKS) in the aks-deployment folder and an AWS EC2 instance with DevOps tools in the devops-tools-deployment folder.

`aks-deployment`

### Terraform Modules

* main.tf: Defines the main infrastructure components, including resource group, Azure Container Registry (ACR), and AKS clusters.
* variables.tf: Contains variable definitions used in the Terraform modules.

* terraform.tfvars: Input variables file to provide specific values for the deployment.

### Getting Started

1. Update the variables in terraform.tfvars with your Azure subscription details, resource group name, ACR details, and AKS cluster configurations.
2. Run terraform init to initialize the Terraform configuration.
3. Execute terraform apply to create the specified resources.



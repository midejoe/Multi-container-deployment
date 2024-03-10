# Multi-container-deployment 

## Overview
This project focuses on deploying multi-container applications using Terraform for Azure Kubernetes Service (AKS) in the aks-deployment folder and an AWS EC2 instance with DevOps tools in the devops-tools-deployment folder.

### aks-deployment

`Terraform Modules`

* main.tf: Defines the main infrastructure components, including resource group, Azure Container Registry (ACR), and AKS clusters.
* variables.tf: Contains variable definitions used in the Terraform modules.

* terraform.tfvars: Input variables file to provide specific values for the deployment.

### Getting Started

1. Update the variables in terraform.tfvars with your Azure subscription details, resource group name, ACR details, and AKS cluster configurations.
2. Run terraform init to initialize the Terraform configuration.
3. Execute terraform apply to create the specified resources.

### devops-tools-deployment
`Terraform Modules`
* main.tf: Deploys an AWS EC2 instance with a user script (devopstools.sh) for setting up DevOps tools.
* variables.tf: Defines variables used in the Terraform modules.
* security-group.tf: Configures the security group with open ports for SSH (22), Jenkins access (8080), and SonarQube access (9000).
* vpc.tf: Utilizes the default VPC for networking.
* subnet.tf: Specifies the subnet for the EC2 instance.

### Getting Started

1. Update the variables in variables.tf with your AWS region, EC2 instance details, and security group configurations.
2. Run terraform init to initialize the Terraform configuration.
3. Execute terraform apply to create the specified resources.

<!-- ### Security Considerations
1. Ensure that sensitive information such as access keys, secrets, and passwords are stored securely and not exposed in the codebase.
2. Review and customize security group settings based on your organization's security policies.

### Maintenance
1. Regularly check for updates to Terraform modules and providers.
2. Monitor the infrastructure components for any changes in requirements or configurations.

### Contributing
Feel free to contribute to the project by submitting issues or pull requests. Your feedback and collaboration are highly appreciated! -->

# AWS-Terraform-Containerized-Website

This Terraform project sets up a website infrastructure on AWS using ECS (Elastic Container Service) with an Application Load Balancer (ALB). The infrastructure includes a Virtual Private Cloud (VPC) with public and private subnets, NAT gateways, ACM certificate, security groups, and an ECS tasks execution role.

## Project Description
The main Terraform configuration is in the `website-ecs` directory. It uses reusable modules from the modules directory to create the website infrastructure.

### Modules
- **ACM**: The ACM module creates an Amazon Certificate Manager (ACM) certificate for securing the website with HTTPS.

- **ALB**: The ALB module sets up an Application Load Balancer to distribute website traffic across multiple ECS containers.

- **ecs-tasks-execution-role**: The ECS Tasks Execution Role module creates an ECS task execution role that grants permissions to ECS tasks.

- **nat-gateway**: The NAT Gateway module creates NAT gateways and associates private route tables to allow internet access for resources in private subnets.

- **security-groups**: The Security Groups module creates security groups to control traffic between the ALB and ECS containers.

- **VPC**: The VPC module sets up a Virtual Private Cloud with public and private subnets, along with an internet gateway for internet access.

### Terraform Backend
The Terraform state file is stored remotely in an S3 bucket with the specified configuration in backend.tf. This allows for better collaboration and state management among team members.

### AWS Provider
The AWS provider is configured in `providers.tf`, using the AWS region and the named profile for AWS CLI credentials.

### Input Variables
Input variables are defined in `variables.tf`, allowing customization of the infrastructure setup. They are set in `terraform.tfvars` with appropriate values for the project.

## Getting Started
- Clone the repository to your local machine.
- Install Terraform on your system.
- Set up your AWS CLI credentials and configure the "shubham" profile.
- Navigate to the `website-ecs` directory.
- Initialize the Terraform configuration:
```
terraform init
```
Review the configuration and input variables in `main.tf`, `variables.tf`, and `terraform.tfvars`.

- Plan and apply the Terraform changes:
```
terraform plan
terraform apply
```
## Cleanup
To destroy the infrastructure created by Terraform, run:

```
terraform destroy
```
Note: Be cautious while running terraform destroy as it will delete all the resources created for the website infrastructure.

## License
This project is licensed under the MIT License. Feel free to use, modify, and distribute it as per the terms of the license.

## Acknowledgments
Special thanks to HashiCorp for creating Terraform and the community for their valuable contributions.

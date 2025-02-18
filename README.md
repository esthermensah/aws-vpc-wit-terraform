# aws-vpc-with-terraform

This project contains Terraform configuration files to create and manage an AWS Virtual Private Cloud (VPC) with public and private subnets, an internet gateway, and route tables.

## Project Structure

- `main.tf`: Contains the main Terraform configuration for creating the VPC, subnets, internet gateway, and route tables.
- `provider.tf`: Contains the provider configuration for AWS.
- `variables.tf` (optional): Contains variable definitions for the project.
- `outputs.tf` (optional): Contains output definitions for the project.

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)

## Setup

1. **Clone the repository**:
   ```sh
   git clone https://github.com/your-username/aws-vpc-with-terraform.git
   cd aws-vpc-with-terraform

2. **Configure AWS CLI**:
   Run the following command to configure your AWS CLI with your credentials:
   ```sh
   aws configure
   
3. **Initialize Terraform**:
   
   Initialize the Terraform configuration by running:
   terraform init

4.  **Review the Terraform plan**:
    Generate and review the execution plan by running: terraform plan

5.   **Apply the Terraform configuration**: 
   Apply the Terraform configuration to create the resources: terraform apply

**Destroying the Infrastructure**

To destroy the VPC and all associated resources, run the following command: terraform destroy

# Terraform AWS Infrastructure Configuration

This repository contains Terraform configurations to deploy the following infrastructure on AWS:

- VPC
- Public subnet
- Private subnet
- Internet gateway
- Route table
- Security group
- Bastion instance
- Application instance
- Key pair
- RDS instance
- ElastiCache Redis engine

## File Structure

This repository is organized into two folders:
- `basic-configuration`: contains the basic Terraform configuration to deploy the infrastructure.
- `modules-configuration`: contains a modularized version of the Terraform configuration using modules and variables.
  - Inside `modules-configuration`, there is a `ses` folder, which contains screenshots of the SES service mail and the Lambda function.
  - Besides this configuration, there are two other configurations for an ElastiCache Redis engine and an RDS, and both of them are available under the `lab2/compute` module.

## Prerequisites

Before using this Terraform configuration, you should have the following:
- Terraform CLI installed on your local machine.
- AWS account credentials configured.

## Usage

Follow the steps below to use this Terraform configuration:

1. Clone this repository to your local machine.
2. Navigate to the `basic-configuration` or `modules-configuration` directory, depending on the configuration you want to use.
3. Run `terraform init` to initialize the configuration.
4. Run `terraform apply` to create the infrastructure on AWS.
5. When you're finished using the infrastructure, run `terraform destroy` to tear it down.

## Variables

The following variables can be customized:

- `region`: The AWS region to create the infrastructure in (default: `us-east-1`).
- `vpc_cidr_block`: The CIDR block for the VPC (default: `10.0.0.0/16`).
- `public_subnet_cidr_block`: The CIDR block for the public subnet (default: `10.0.1.0/24`).
- `private_subnet_cidr_block`: The CIDR block for the private subnet (default: `10.0.2.0/24`).
- `bastion_instance_type`: The instance type for the bastion instance (default: `t2.micro`).

## Workspaces

This Terraform configuration supports multiple workspaces: `prod` and `dev`. The variables and configurations for each workspace are available via `prod.tfvars` and `dev.tfvars`, respectively.

variable "region" {
  type        = string
  description = "The region for the provider"
}
# Variables for the VPC module
variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
}
variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the public subnet"
}

variable "private_subnet_cidr_block" {
  type        = string
  description = "The CIDR blocks for the private subnet"
}

# Variables for the compute module
variable "bastion_ami" {
  type        = string
  description = "The AMI ID for the bastion instance"
}

variable "app_ami" {
  type        = string
  description = "The AMI ID for the application instance"
}

variable "bastion_instance_type" {
  type        = string
  description = "The instance type for the bastion instance"
}

variable "app_instance_type" {
  type        = string
  description = "The instance type for the application instance"
}
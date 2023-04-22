variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
}
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "The CIDR block for the private subnet."
  type        = string
}
variable "bastion_instance_type" {
  description = "EC2 instance type for the bastion host"
  type        = string
  default     = "t2.micro"
}

variable "app_instance_type" {
  description = "EC2 instance type for the application host"
  type        = string
  default     = "t2.micro"
}

variable "bastion_ami" {
  description = "AMI ID for the bastion host"
  type        = string
  default     = "ami-0c94855ba95c71c99"
}

variable "app_ami" {
  description = "AMI ID for the application host"
  type        = string
  default     = "ami-0c94855ba95c71c99"
}

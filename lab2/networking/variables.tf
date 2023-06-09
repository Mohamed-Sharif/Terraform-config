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
variable "az1" {
  type        = string
}
variable "az2" {
  type        = string
}
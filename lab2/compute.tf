  module "compute" {
  source = "./compute"

  vpc_name = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block
  public_subnet_cidr_block = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
  bastion_instance_type = var.bastion_instance_type
  app_instance_type = var.app_instance_type
}
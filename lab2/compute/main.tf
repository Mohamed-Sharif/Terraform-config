module "network" {
  source = "../networking"
  vpc_name = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block
  public_subnet_cidr_block = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
  az1=var.az1 
  az2=var.az2 
}
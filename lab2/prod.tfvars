region = "eu-central-1"
# VPC configuration
vpc_name = "my-prod-vpc"
vpc_cidr_block = "192.168.0.0/16"
public_subnet_cidr_block = "192.168.1.0/24"
private_subnet_cidr_block = "192.168.10.0/24"

# EC2 instance configuration
bastion_instance_type = "t3.small"
app_instance_type = "t3.small"
app_ami = "ami-0b7fd829e7758b06d"
bastion_ami = "ami-0b7fd829e7758b06d"
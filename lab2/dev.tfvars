region = "us-east-1"
# VPC configuration
vpc_name = "my-dev-vpc"
vpc_cidr_block = "10.0.0.0/16"
public_subnet_cidr_block = "10.0.1.0/24"
private_subnet_cidr_block = "10.0.10.0/24"

# EC2 instance configuration
bastion_instance_type = "t2.micro"
app_instance_type = "t2.micro"
app_ami = "ami-06e46074ae430fba6"
bastion_ami = "ami-06e46074ae430fba6"
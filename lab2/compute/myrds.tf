# Create RDS instance
  resource "aws_db_instance" "my_rds_instance" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.${var.app_instance_type}"
  name                 = "myrds"
  username             = local.db_username
  password             = local.db_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  # Set subnet group
  vpc_security_group_ids = [
    aws_security_group.rds_sg.id,
  ]
  db_subnet_group_name   = aws_db_subnet_group.my_subnet_group.name

}

# Create subnet group for RDS
resource "aws_db_subnet_group" "my_subnet_group" {
  name        = "my-db-subnet-group"
  description = "Subnet group for my RDS instance"

  subnet_ids = [
    module.network.public_subnet_id,
    module.network.private_subnet_id
  ]
}

# Create security group for RDS
resource "aws_security_group" "rds_sg" {
  name_prefix = "rds-sg-"
  vpc_id      = module.network.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }
}

# Output the endpoint of the RDS instance
output "rds_endpoint" {
  value = aws_db_instance.my_rds_instance.endpoint
}

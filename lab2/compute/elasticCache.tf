# Create Elasticache Redis cluster
resource "aws_elasticache_subnet_group" "elasticache_subnet_group" {
  name       = "my-elasticache-subnet-group"
  subnet_ids = [module.network.private_subnet_id ,module.network.public_subnet_id] 
}

resource "aws_security_group" "elasticache_security_group" {
  name_prefix = "my-elasticache-sg"
  vpc_id = module.network.vpc_id
  ingress {
    from_port = 6379
    to_port   = 6379
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_elasticache_parameter_group" "elasticache_param_group" {
  family = "redis7"
  name   = "my-elasticache-param-group"

  parameter {
    name  = "maxmemory-policy"
    value = "allkeys-lru"
  }
}

resource "aws_elasticache_replication_group" "elasticache_replication_group" {
  replication_group_id = "my-elasticache-cluster"
    replication_group_description  = "My replication group"
  node_type            = "cache.t2.small"
  port                 = 6379
  engine               = "redis"
  num_node_groups      = 1
  subnet_group_name    = aws_elasticache_subnet_group.elasticache_subnet_group.name
  parameter_group_name = aws_elasticache_parameter_group.elasticache_param_group.name
  security_group_ids   = [aws_security_group.elasticache_security_group.id]
}

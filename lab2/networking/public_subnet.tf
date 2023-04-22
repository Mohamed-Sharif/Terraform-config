resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = var.az1
  map_public_ip_on_launch=true
  tags = {
    Name = "public-subnet-1"
  }
}
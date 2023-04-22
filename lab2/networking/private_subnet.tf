### private subnet ###

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_cidr_block
  tags = {
    Name = "private-subnet-1"
  }
}

### private subnet ###

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.2.0/24"
  tags = {
    Name = "private-subnet-1"
  }
}

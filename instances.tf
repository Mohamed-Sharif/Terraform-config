
resource "aws_instance" "BASTION" {
  ami = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [ aws_security_group.allow_all_ssh.id ]

  tags = {
    Name = "bastionhost"
    }
}

resource "aws_instance" "private_inst" {
  ami = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private.id
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]

  tags = {
    Name = "privateinstance"
    }
}
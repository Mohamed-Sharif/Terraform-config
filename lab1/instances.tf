
resource "aws_instance" "BASTION" {
  ami = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id
    key_name = aws_key_pair.myKeyPair.key_name
  vpc_security_group_ids = [ aws_security_group.allow_all_ssh.id ]

  tags = {
    Name = "bastionhost"
    }
}

resource "aws_instance" "application_instance" {
  ami = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private_subnet.id
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]
  key_name = aws_key_pair.myKeyPair.key_name
  tags = {
    Name = "applicationinstance"
    }
}

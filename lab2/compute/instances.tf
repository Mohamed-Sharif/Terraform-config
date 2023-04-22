
resource "aws_instance" "BASTION" {
  ami = var.bastion_ami
  instance_type = var.bastion_instance_type
  subnet_id = module.network.public_subnet_id
    key_name = aws_key_pair.myKeyPair.key_name
  vpc_security_group_ids = [ aws_security_group.allow_all_ssh.id ]

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > bastionip"
  }

  tags = {
    Name = "bastionhost"
    }
}

resource "aws_instance" "application_instance" {
  ami = var.app_ami
  instance_type = var.app_instance_type
  subnet_id = module.network.private_subnet_id
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]
  key_name = aws_key_pair.myKeyPair.key_name
  tags = {
    Name = "applicationinstance"
    }
}
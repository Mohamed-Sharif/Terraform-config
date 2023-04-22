
resource "aws_instance" "BASTION" {
  ami = data.aws_ami.amazon_linux.id
  instance_type = var.bastion_instance_type
  subnet_id = module.network.public_subnet_id
    key_name = aws_key_pair.myKeyPair.key_name
  vpc_security_group_ids = [ aws_security_group.allow_all_ssh.id ]
  associate_public_ip_address = true
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > public_ip.txt"
  }

  tags = {
    Name = "bastionhost"
    }
}

resource "aws_instance" "application_instance" {
  ami = data.aws_ami.amazon_linux.id
  instance_type = var.app_instance_type
  subnet_id = module.network.private_subnet_id
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]
  key_name = aws_key_pair.myKeyPair.key_name
  
  tags = {
    Name = "applicationinstance"
    }
}
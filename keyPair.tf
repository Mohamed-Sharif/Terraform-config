#Resource to create a SSH private key
resource "tls_private_key" "myKey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# create aws key pair by public key
resource "aws_key_pair" "myKeyPair" {
  key_name   = "myKeyPair"
  public_key = tls_private_key.myKey.public_key_openssh
  provisioner "local-exec"{
    command = "echo '${tls_private_key.myKey.private_key_pem}' > ./myKeyPair.pem"
  }
}
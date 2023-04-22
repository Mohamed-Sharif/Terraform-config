output "bastion_public_ip" {
  value = aws_instance.BASTION.public_ip
}

output "app_private_ip" {
  value = aws_instance.application_instance.private_ip
}
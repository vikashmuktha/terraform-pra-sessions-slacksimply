# Bastion EC2 Complete
output "ec2_bastion_id" {
  description = "The Bastion ID of the instance"
  value       = module.bastion_server.id
}


output "ec2_bastion_dns" {
  description = "The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = module.bastion_server.public_dns
}


output "ec2_bastion_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.bastion_server.public_ip
}


# Private EC2 Complete
output "ec2_private_id" {
  description = "The private ID of the instance"
  value       = module.vm_server.id
}


output "ec2_private_dns" {
  description = "The private DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = module.vm_server.private_dns
}


output "ec2_private_ip" {
  description = "The private IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.vm_server.private_ip
}



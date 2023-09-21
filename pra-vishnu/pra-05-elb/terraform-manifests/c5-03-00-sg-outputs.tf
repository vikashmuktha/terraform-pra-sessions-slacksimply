# AWS EC2 Security Group Terraform Outputs

# Public Bastion Host Security Group Outputs

output "security_group_arn" {
  description = "The ARN of the security group"
  value       = module.public_sg.security_group_arn
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = module.public_sg.security_group_id
}

output "security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.public_sg.security_group_vpc_id
}

output "security_group_owner_id" {
  description = "The owner ID"
  value       = module.public_sg.security_group_owner_id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = module.public_sg.security_group_name
}

output "security_group_description" {
  description = "The description of the security group"
  value       = module.public_sg.security_group_description
}

# Private EC2 Instances Security Group Outputs

output "private_security_group_arn" {
  description = "The ARN of the security group"
  value       = module.private_sg.private_security_group_arn
}

output "private_security_group_id" {
  description = "The ID of the security group"
  value       = module.private_sg.private_security_group_id
}

output "private_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.private_sg.private_security_group_vpc_id
}

output "private_security_group_owner_id" {
  description = "The owner ID"
  value       = module.private_sg.private_security_group_owner_id
}

output "private_security_group_name" {
  description = "The name of the security group"
  value       = module.private_sg.private_security_group_name
}

output "private_security_group_description" {
  description = "The description of the security group"
  value       = module.private_sg.private_security_group_description
}
# " https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest?tab=outputs "
# " https://github.com/terraform-aws-modules/terraform-aws-security-group/blob/master/examples/complete/outputs.tf "

output "security_group_arn" {
  description = "The ARN of the security group"
  value       = module.bastion_sg.security_group_arn
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = module.bastion_sg.security_group_id
}

output "security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.bastion_sg.security_group_vpc_id
}

output "security_group_owner_id" {
  description = "The owner ID"
  value       = module.bastion_sg.security_group_owner_id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = module.bastion_sg.security_group_name
}

output "security_group_description" {
  description = "The description of the security group"
  value       = module.bastion_sg.security_group_description
}


#  For Private Security Group am taking aws resources "aws-security-group"
#  aws_security_group.private_sg
#  for reference " https://github.com/terraform-aws-modules/terraform-aws-security-group/blob/master/examples/rules-only/outputs.tf "
#  Above github link am using for outputs of private security groups

# From resources security group am taking resources names " # aws_security_group.private_1_sg "
output "private_sg_arn" {
  description = "The ARN of the security group"
  value       = aws_security_group.private_sg.arn
}

output "private_sg_id" {
  description = "The ID of the security group"
  value       = aws_security_group.private_sg.id
}

output "private_sg_vpc_id" {
  description = "The VPC ID"
  value       = aws_security_group.private_sg.vpc_id
}

output "private_sg_owner_id" {
  description = "The VPC ID"
  value       = aws_security_group.private_sg.owner_id
}

output "private_sg_name" {
  description = "The name of the security group"
  value       = aws_security_group.private_sg.name
}

output "private_sg_description" {
  description = "The description of the security group"
  value       = aws_security_group.private_sg.description
}



#  For Private Security Group am taking aws resources "aws-security-group"
#  aws_security_group.application_loadbalancer_sg

output "loadbalancer_sg_arn" {
  description = "The ARN of the security group"
  value       = aws_security_group.application_loadbalancer_sg.arn
}

output "loadbalancer_sg_id" {
  description = "The ID of the security"
  value       = aws_security_group.application_loadbalancer_sg.id
}

output "loadbalancer_sg_vpc_id" {
  description = "The VPC ID"
  value       = aws_security_group.application_loadbalancer_sg.vpc_id
}

output "loadbalancer_sg_owner_id" {
  description = "The VPC ID"
  value       = aws_security_group.application_loadbalancer_sg.owner_id
}

output "loadbalancer_sg_name" {
  description = "The name of the security group"
  value       = aws_security_group.application_loadbalancer_sg.name
}

output "loadbalancer_sg_description" {
  description = "The description of the security group"
  value       = aws_security_group.application_loadbalancer_sg.description
}
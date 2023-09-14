# "https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest?tab=outputs"
# GitHub link "https://github.com/terraform-aws-modules/terraform-aws-security-group/blob/v5.1.0/examples/complete/outputs.tf"
# Outputs for Security Groups
# AWS EC2 Security Group Terraform Outputs

# Public Bastion Host Security Group Outputs


## module.public_bastion_sg.security_group_id
output "security_group_id" {
  description = "The ID of the security group"
  value       = module.public_bastion_sg.security_group_id
}

## public_bastion_sg_group_vpc_id
## module.public_bastion_sg.security_group_vpc_id
output "security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.public_bastion_sg.security_group_vpc_id
}

## public_bastion_sg_group_name
## module.public_bastion_sg.security_group_name
output "security_group_name" {
  description = "The name of the security group"
  value       = module.public_bastion_sg.security_group_name
}

/*
 ***** NOTE : For this version i am getting errors for output and for given different output "security_group_private" names *****

# Private EC2 Instances Security Group Outputs
## private_sg_group_id

output "security_group_private" {
  value = aws_security_group.private-sg.vpc_id
}

## private_sg_group_vpc_id



## private_sg_group_name


output "private_security_group_name" {
  description = "The name of the security group"
  value       = module.private_sg.private_security_group_name
}

*/

# " https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/v5.5.0/examples/complete/outputs.tf "

# AWS EC2 Instance Terraform Outputs
# Public EC2 Instances - Bastion Host

## ec2_bastion_public_id
 # module.ec2_bastion
output "ec2_bastion_public_ids" {
  description = "The public Id address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2_bastion.id
}

## ec2_bastion_public_ip
 # module.ec2_bastion
output "ec2_bastion_public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2_bastion.public_ip
}


## ec2_private_public_id
 # module.ec2_private 
output "ec2_private_id" {
  description = "List of private Id addresses assigned to the instances"
  value       = module.ec2_private.id
}

## ec2_bastion_private_ip
 # module.ec2_private
output "ec2_private_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = module.ec2_private.public_ip
}
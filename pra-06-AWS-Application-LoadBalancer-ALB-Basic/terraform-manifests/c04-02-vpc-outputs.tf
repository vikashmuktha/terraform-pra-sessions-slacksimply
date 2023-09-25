# " https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest?tab=outputs "
# Providing github link " https://github.com/terraform-aws-modules/terraform-aws-vpc/blob/v5.1.2/examples/complete/outputs.tf "


output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "public_subnets" {
  description = "List of IDs of VPC Public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "List of IDs of VPC Private subnets"
  value       = module.vpc.private_subnets
}

output "database_subnets" {
  description = "List of IDs of VPC Database subnets"
  value       = module.vpc.database_subnets
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

output "vpc_enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value       = module.vpc.vpc_enable_dns_support
}

output "vpc_enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value       = module.vpc.vpc_enable_dns_hostnames
}
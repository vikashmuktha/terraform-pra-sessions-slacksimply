# ""
# VPC Outputs

output "vpc_id" {
  description = "Providing vpc id"
  value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "Providing  vpc_cidr_block"
  value = module.vpc.vpc_cidr_block
}

output "public_subnets" {
  description = "Providing public subnets"
  value = module.vpc.public_subnets
}

output "private_subnets" {
  description = "Providing  private_subnets"
  value = module.vpc.private_subnets
}

output "database_subnets" {
  description = "Providing  database_subnets"
  value = module.vpc.database_subnets
}

output "azs" {
  description = "Providing  azs"
  value = module.vpc.azs
}

# VPC NAT gateway Public IP
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}



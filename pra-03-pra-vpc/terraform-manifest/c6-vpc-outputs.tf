# "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest?tab=outputs"
# VPC OutPuts

output "vpc_id" {
  description = "VPC Id"
  value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "vpc cidr block"
  value = module.vpc.vpc_cidr_block
}

output "public_subnets" {
  description = "vpc public subnets"
  value = module.vpc.public_subnets
}

output "private_subnets" {
  description = "vpc private subnets"
  value = module.vpc.private_subnets
}

output "database_subnets" {
  description = "vpc database subnet"
  value = module.vpc.database_subnets
}

output "nat_public_ips" {
  description = "vpc nat public ips- List of public Elastic IPs created for AWS NAT Gateway"
  value = module.vpc.nat_public_ips
}

output "azs" {
  description = "vpc availability zones- List of availability zones"
  value = module.vpc.azs
}

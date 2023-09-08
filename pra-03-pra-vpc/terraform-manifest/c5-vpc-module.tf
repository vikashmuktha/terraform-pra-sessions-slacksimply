# "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest"
# VPC Module

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"
# VPC Basic Details
  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
# VPC Availability Zones
  azs             = var.vpc_availability_zones
# VPC Subnets  
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets 
  database_subnets = var.vpc_database_subnets
# Database Subnets  
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
# Database Outbound Communication  
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway
# VPC DNS parameters
  enable_dns_hostnames = true
  enable_dns_support   = true
# Common tags
  tags = local.common_tags
  vpc_tags = local.common_tags
# Additional Tags for Subnets
  public_subnet_tags = {
    type = "Public Subnets"
  }
  private_subnet_tags = {
    type = "Private Subnets"
  }
  database_subnet_tags = {
    type = "Database Subnets"
  }  
}
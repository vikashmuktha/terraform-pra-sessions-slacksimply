#  "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest"
# vpc module

# module.vpc

module "vpc" {
  
  source = "terraform-aws-modules/vpc/aws"

  name = "${local.name}-${var.vpc}"
  cidr = var.vpc_cidr_block

  azs             = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets
  database_subnets = var.vpc_private_subnets
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_group

  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway
  # enable_vpn_gateway = 

# DNS parameters
  enable_dns_hostnames = true
  enable_dns_support   = true
  
  tags = local.common_tags
  vpc_tags = local.common_tags

# Additional Tags
public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }  
  database_subnet_tags = {
    Type = "Private Database Subnets"
  }

  
}
# "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest"

# module.vpc-1.name
# VPC module
module "vpc-1" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"
  
  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
#Availability Zones
  azs             = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets
  database_subnets = var.vpc_database_subnets
# module.vpc-1.private_subnets
# module.vpc-1.public_subnets
# module.vpc-1.database_subnets
# var.vpc_database_subnets

  create_database_subnet_group           = var.vpc_create_database_subnet_group
  create_database_subnet_route_table     = var.vpc_create_database_subnet_route_table
  # create_database_nat_gateway_route = var.vpc_enable_nat_gateway 

  # enable_nat_gateway = true
  # enable_vpn_gateway = true

  # NAT Gateways - Outbound Communication
  enable_nat_gateway = var.vpc_enable_nat_gateway  # var.vpc_enable_nat_gateway 
  single_nat_gateway = var.vpc_single_nat_gateway # var.vpc_single_nat_gateway

  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true


  tags = local.common_tags
  vpc_tags = local.common_tags

  # Additional Tags to Subnets
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
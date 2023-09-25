# " https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest "
# We can get info under variable session  

# module.vpc
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"
  
  # Basic Details
  name = var.vpc_name
  cidr = var.vpc_cidr_block
  azs = var.vpc_availability_zones
  
  # Subnetes
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_private_subnets
  database_subnets = var.vpc_database_subnets

  # Databases Info
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table 

  # NAT Gateways - Outbound Communication 
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway
  
  # VPC DNS Parameters
  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  enable_dns_support = var.vpc_enable_dns_support
  
  # Tags
  tags = local.common_tags

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

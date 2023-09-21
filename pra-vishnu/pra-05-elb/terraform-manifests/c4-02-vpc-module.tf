# Providing vpc module detail info 
# " https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest "
# In this session adding from variables, versions, dns parameters and common tags form public, private..


# module.vpc
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  #Basic Details of VPC  
  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  azs             = var.availability_zone_names
  
  #Subnets Info
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  database_subnets = var.database_subnets
  
  #Route Tables info
  create_database_subnet_group = var.create_database_subnet_group
  create_database_subnet_route_table = var.create_database_subnet_route_table
  
  # NAT Gateways - Outbound Communication
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway =  var.single_nat_gateway
  
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
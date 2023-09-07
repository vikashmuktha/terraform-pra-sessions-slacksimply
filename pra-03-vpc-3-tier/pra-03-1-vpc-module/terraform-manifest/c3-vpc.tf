# VPC module document:  "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest"

# Child Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"


# Providing VPC name 
  name = "my-vpc"
    cidr = "10.0.0.0/16"

# Availability Zones in this VPC
  azs             = ["eu-west-3a", "eu-west-3b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]  # Public and Private subnets for this VPC 
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
  database_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]  # Database subnets for this VPC

# Public access to RDS instances
  create_database_subnet_group           = true
  create_database_subnet_route_table     = true
  # create_database_internet_gateway_route = true
  # create_database_nat_gateway_route = true
# VPC DNS Parameters  
  enable_dns_hostnames = true
  enable_dns_support   = true

# Outbound communition enabling IGW and NAT GW, Actually it is fasle  
  enable_nat_gateway = true
  enable_vpn_gateway = true
  single_nat_gateway = true  


# "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest?tab=inputs"

  public_subnet_tags = {
    Type = "My-Public-Subnet"
 }

  private_subnet_tags = {
    Type = "My-Private-Subnet"
  }

  database_subnet_tags = {
    Type = "My-Database-Subnet"
  }

    tags = {
        Terraform = "true"
        Owner = "vikash"
        Environment = "dev"
    }

  vpc_tags = {
    Type = "vpc-dev"
  }  

}
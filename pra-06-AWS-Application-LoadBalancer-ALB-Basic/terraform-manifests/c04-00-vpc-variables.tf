# Mainly in this session we can figure it out variablies like
        /*
        In case you have any doubts check the vpc module 

        " https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest "

        Name
        CIDR
        Availability Zones
        Subnets-{Public, Private, Databases}
        Database Subnet Route Groups
        Database Subnet Route Tables
        Sinlge NAT gateway
        Enable NAT gateway
        DNS Parameters
            enable_dns_hostnames
            enable_dns_support
        Tags
        ** Checking the types wheather it is "string or bool" in the input session of the terraform vpc module document
                " https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest?tab=inputs "

        */
# " https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables "

# BASIC VARIABLE BLOCK
# var.vpc_name
variable "vpc_name" {
  description = "Providing VPC name"
  type = string
  default = "my-vpc"
}

#var.vpc_instance_cidr
variable "vpc_cidr_block" {
  description = "Providing the CIDR Block"
  type = string
  default = "10.0.0.0/16"
}

# vpc_availability_zones
variable "vpc_availability_zones" {
  description = "Providing the Instance Availability Zones Block"
  type = list(string)
  default = ["eu-west-3a", "eu-west-3b"]
}

# SUBNETS BLOCK
# var.vpc_public_subnets
variable "vpc_public_subnets" {
  description = "Providing the VPC Public Subnets Block"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# var.vpc_private_subnets
variable "vpc_private_subnets" {
  description = "Providing the VPC Private Subnets Block"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# DATABASE BLOCK
# var.vpc_database_subnets
variable "vpc_database_subnets" {
  description = "Providing the VPC Database Subnets Block"
  type = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# var.vpc_create_database_subnet_group 
variable "vpc_create_database_subnet_group" {
  description = "Providing the VPC create_database_subnet_group  Block"
  type = bool
  default = true
}

# var.vpc_create_database_subnet_route_table
variable "vpc_create_database_subnet_route_table" {
  description = "Providing the VPC create_database_subnet_route_table Block"
  type = bool
  default = true
}

# NAT GATEWAY
# var.vpc_enable_nat_gateway
variable "vpc_enable_nat_gateway" {
  description = "Providing the VPC enable_nat_gateway Block"
  type = bool
  default = true
}

# var.vpc_single_nat_gateway
variable "vpc_single_nat_gateway" {
  description = "Providing the VPC single_nat_gateway Block"
  type = bool
  default = true
}

# DNS PARAMETERS
# var.vpc_enable_dns_hostnames
variable "vpc_enable_dns_hostnames" {
  description = "Providing the VPC DNS Parameters Block"
  type = bool
  default = true
}

#var.vpc_enable_dns_support
variable "vpc_enable_dns_support" {
  description = "Providing the VPC DNS Parameters Block"
  type = bool
  default = true
}


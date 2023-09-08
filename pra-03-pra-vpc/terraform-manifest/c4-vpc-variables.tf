# "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest?tab=inputs"
# VPC Variables

# AWS VPC Nzme
# var.vpc_name
variable "vpc_name" {
  description = "Providing AWS aws_vpc_name"
  type    = string
  default = "my-vpc-01"
}

# var.vpc_cidr_block
variable "vpc_cidr_block" {
  description = "Providing AWS vpc_cidr_block"
  type    = string
  default = "10.0.0.0/16"
}

# var.vpc_availability_zones
variable "vpc_availability_zones" {
  description = "Providing AWS vpc_availability_zones"
  type    = list(string)
  default = ["eu-west-3a", "eu-west-3b"]
}

# var.vpc_public_subnets
variable "vpc_public_subnets" {
  description = "Providing AWS vpc_public_subnets"
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# var.vpc_private_subnets
variable "vpc_private_subnets" {
  description = "Providing AWS vpc_private_subnets"
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}


# var.vpc_database_subnets
variable "vpc_database_subnets" {
  description = "Providing AWS vpc_database_subnets"
  type    = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# var.vpc_create_database_subnet_group "Type is boolean, and Defining True or False"
variable "vpc_create_database_subnet_group" {
  description = "Providing AWS create_database_subnet_group"
  type = bool
  default = true
}

# var.vpc_create_database_subnet_route_table "Type is boolean, and Defining True or False"
variable "vpc_create_database_subnet_route_table" {
    description = "Providing AWS create_database_subnet_route_table"
    type = bool
    default = true
}

# var.vpc_enable_nat_gateway
variable "vpc_enable_nat_gateway" {
  description = "Providing AWS enable_nat_gateway"
  type = bool
  default = true
}

# var.vpc_single_nat_gateway # vpc_single_nat_gateway
variable "vpc_single_nat_gateway" {
  description = "Providing AWS single_nat_gateway"
  type = bool
  default = true
}




# VPC variable
# "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest?tab=inputs"

# var.vpc
variable "vpc" {
  description = "Providing aws vpc"
  type = string
  default = "my-vpc-01"
}

# var.vpc_cidr_block
variable "vpc_cidr_block" {
  description = "Providing aws vpc_cidr_block"
  type = string
  default = "10.0.0.0/16"
}

# var.vpc_availability_zones
variable "vpc_availability_zones" {
  description = "Providing aws vpc"
  type = list(string)
  default = ["eu-west-3a", "eu-west-3b"]
}

# var.vpc_public_subnets
variable "vpc_public_subnets" {
  description = "Providing aws vpc_public_subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# var.vpc_private_subnets
variable "vpc_private_subnets" {
  description = "Providing aws vpc_private_subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# var.vpc_database_subnets
variable "vpc_database_subnets" {
  description = "Providing aws vpc_database_subnets"
  type = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# var.vpc_enable_nat_gateway
variable "vpc_enable_nat_gateway" {
  description = "Providing aws vpc_enable_nat_gateway // true or false"
  type = bool
  default = true
}


# var.vpc_create_database_subnet_group 
variable "vpc_create_database_subnet_group" {
  description = "Providing aws vpc_create_database_subnet_group"
  type = bool
  default = true
}

# var.vpc_create_database_subnet_route_group 
variable "vpc_create_database_subnet_route_group" {
  description = "Providing aws vpc_create_database_subnet_route_group "
  type = bool
  default = true
}


# var.vpc_single_nat_gateway 
variable "vpc_single_nat_gateway" {
  description = "Providing aws vpc_single_nat_gateway // true or false"
  type = bool
  default = true
}


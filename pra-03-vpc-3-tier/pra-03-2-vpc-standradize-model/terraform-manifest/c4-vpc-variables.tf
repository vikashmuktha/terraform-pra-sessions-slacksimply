# "https://developer.hashicorp.com/terraform/language/values/variables"
# VPC varibles block

# VPC name
# var.vpc_name
variable "vpc_name" {
  description = "Providing vpc name"  
  type    = string
  default = "my-vpc"
}

# VPC CIDR_block
# var.vpc_cidr_block
variable "vpc_cidr_block" {
  description = "Providing vpc cidr"  
  type    = string
  default = "10.0.0.0/16"
}

# VPC vpc_availability_zones
# var.vpc_availability_zones
variable "vpc_availability_zones" {
  description = "Providing vpc vpc_availability_zones"  
  type    = list(string)
  default = ["eu-west-3a", "eu-west-3b"]
}


# VPC vpc_public_subnets
# var.vpc_public_subnets
variable "vpc_public_subnets" {
  description = "Providing vpc vpc_public_subnets"  
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC vpc_private_subnets
# var.vpc_private_subnets
variable "vpc_private_subnets" {
  description = "Providing vpc vpc_private_subnets"  
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}


# VPC vpc_database_subnets
# var.vpc_database_subnets
variable "vpc_database_subnets" {
  description = "Providing vpc vpc_database_subnets"  
  type    = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Create Database Subnet Group (True / False)
# var.vpc_create_database_subnet_group
variable "vpc_create_database_subnet_group" {
  description = "VPC Create Database Subnet Group"
  type = bool
  default = true 
}

# VPC Create Database Subnet Route Table (True or False)
# var.vpc_create_database_subnet_route_table
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type = bool
  default = true   
}

  
# VPC Enable NAT Gateway (True or False)
# var.vpc_enable_nat_gateway 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type = bool
  default = true  
}

# VPC Single NAT Gateway (True or False)
# var.vpc_single_nat_gateway
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}

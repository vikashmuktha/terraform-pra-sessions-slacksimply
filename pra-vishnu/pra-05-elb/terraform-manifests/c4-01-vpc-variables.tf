# VPC related variables like vpc name, cidr, subnets(public,private,database), subnets-group, subnets-route-tables, nat-gateway, enable-nat-gateway 
# " https://developer.hashicorp.com/terraform/language/values/variables "
# Here some of the types are taking from inputs of vpc like link " https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest?tab=inputs " for reference


# var.vpc_name
variable "vpc_name" {
  description = "Providing AWS VPC name block"
  type =  string
  default = "my-vpc"
}

# var.vpc_cidr_block
variable "vpc_cidr_block" {
  description = "Providing VPC CIDR block"  
  type    = string
  default = "10.0.0.0/16"
}

# var.availability_zone_names
variable "availability_zone_names" {
  description = "Providing VPC AZS block"  
  type    = list(string)
  default = ["eu-west-3a", "eu-west-3b"]
}

# var.public_subnets
variable "public_subnets" {
  description = "Providing VPC Public subnets block"  
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# var.private_subnets
variable "private_subnets" {
  description = "Providing VPC Private subnets block"  
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# var.database_subnets
variable "database_subnets" {
  description = "Providing VPC Database subnets block"  
  type    = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# var.create_database_subnet_group
variable "create_database_subnet_group" {
  description = "Providing VPC create_database_subnet_group block for true or false"  
  type    = bool
  default = true
}

# var.create_database_subnet_route_table
variable "create_database_subnet_route_table" {
  description = "Providing VPC create_database_subnet_route_table block for true or false"  
  type    = bool
  default = true
}

# var.enable_nat_gateway
variable "enable_nat_gateway" {
  description = "Providing VPC enable_nat_gateway block for true or false"  
  type    = bool
  default = true
}

# var.single_nat_gateway
variable "single_nat_gateway" {
  description = "Providing VPC single_nat_gateway block for true or false"  
  type    = bool
  default = true
}
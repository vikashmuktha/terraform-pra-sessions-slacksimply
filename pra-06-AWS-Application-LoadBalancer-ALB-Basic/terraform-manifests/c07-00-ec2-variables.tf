# EC2 Variable Block 
# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables
# Providing variables like instance type, keys, instance count and soo

# var.instance_type
variable "instance_type" {
  description = "Providing AWS instance type for this servers"
  type = string
  default = "t2.micro"
}

# var.instance_keypair
variable "instance_keypair" {
  description = "Providing Key Pairs"
  type = string
  default = "paris-keys"
}

# var.private_instance_count
variable "private_instance_count" {  
  description = "Providing Count of the Private instances"
  type = number
  default = 1
}
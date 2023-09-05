# Variables Block
# var.instance_region

variable "aws_region" {
  description = "Instance Type"
  type = string
  default = "eu-west-3"
}

# var.instance_type

variable "instance_type" {
  description = "Instance Type"
  type = string
  default = "t2.micro"
}

# var.instance_type_list

variable "instance_type_list" {
  description = "Instance Type"
  type = list(string)
  default = [ "t2.micro", "t2.small", "t2.medium" ]
}

# var.instance_type_map

variable "instance_type_map" {
  description = "Instance Type Map"
  type = map(string)
  default = {
    "Dev" = "t2.micro"
    "Qa" = "t2.small"
    "Prod" = "t2.medium"
  }
}

# var.instance_keypair

variable "instance_keypair" {
  description = "Instances key pairs"
  type = string
  default = "paris-keys"
}
# Variable Block
# var.instance_region

variable "instance_region" {
  description = "Instance region"
  type = string
  default = "eu-west-3"
}

# var.instance_type

variable "instance_type" {
  description = "instance type"
  type    = string
  default = "t2.micro"

}

# var.insttance_keypair

variable "instance_keypair" {
  description = "Providing instance keypair for reference"
  type = string
  default = "paris-keys"
}


# Providing list for instance types
# var.instance_type_list

variable "instance_type_list" {
    description = "instance type for list"
    type = list(string)
    default = [ "t2.micro", "t2.small", "t2.medium" ]
}

# Providing map for instance types
# var.instance_type_map

variable "instance_type_map" {
    description = "instance type for map"
    type = map(string)
    default = {
        "Stagging" = "t2.micro"
        "QA" = "t2.small"
        "Prod" = "t2.medium"
    }
}
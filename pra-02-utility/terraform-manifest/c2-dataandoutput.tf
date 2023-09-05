

# Data sources Block
# "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type_offerings"

# data.aws_ec2_instance_type_offerings.my_ins

data "aws_ec2_instance_type_offerings" "my_ins_type_1" {
  filter {
    name   = "instance-type"
    values = ["t2.micro"]
  }

  filter {
    name   = "location"
    values = ["eu-west-3a"]
    #values = ["eu-west-3d"]
  }

  location_type = "availability-zone"
}


# Output Block


output "output_ins_type_1" {
 
  value = data.aws_ec2_instance_type_offerings.my_ins_type_1.instance_types  # check the attributes on the same page
 
}



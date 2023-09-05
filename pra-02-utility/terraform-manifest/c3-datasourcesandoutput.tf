# Data Sources for EC2 instance types offerings
# "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type_offerings"

# data.aws_ec2_instance_type_offerings.my_ins_type_2

data "aws_ec2_instance_type_offerings" "my_ins_type_2" {

  for_each = toset([ "eu-west-3a", "eu-west-3b", "eu-west-3c", "eu-west-3e" ])
  
  filter {
    name   = "instance-type"
    values = ["t2.micro"]
  }

  filter {
    name   = "location"
    values = [each.key]
  }

  location_type = "availability-zone"
}


# Output Block 1

# Important Note: Once for_each is set, its attributes must be accessed on specific instances
output "output_type_2_0" {
  #value = data.aws_ec2_instance_type_offerings.my_ins_1.instance_types
  value = toset([for t in data.aws_ec2_instance_type_offerings.my_ins_type_2: t.instance_types])
}


#Output-2
# Create a Map with Key as Availability Zone and value as Instance Type supported
output "output_type_2_1" {
  value = {
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type_2: az => details.instance_types
  }
}


# Terraform Output Values
/* Concepts Covered
1. For Loop with List
2. For Loop with Map
3. For Loop with Map Advanced
4. Legacy Splat Operator (latest) - Returns List
5. Latest Generalized Splat Operator - Returns the List
*/


# 1. For loop with List
#  aws_instance.amazonlinux2

output "for_loop_list" {
  description = "For loop with list"
  value = [ for instance in aws_instance.amazonlinux2: instance.public_dns ]
}

# 2. For loop with Map

/*
output "for_loop_map" {
  description = "for loop with map"
  value = [ for instance in aws_instance.amazonlinux2: instance.id => instance.public_dns ]
}
*/

# 3. For Loop with Map Advanced
output "for_output_map2" {
  description = "For Loop with Map - Advanced"
  value = { for c, instance in aws_instance.amazonlinux2: c => instance.public_dns }
}

# 4. Legacy Splat Operator (Legacy) - Returns the List

output "legacy_splat_instance_publicdns" {
  description = "Legacy Splat Operator"
  value = aws_instance.amazonlinux2.*.public_dns
}


# 5. Latest Generalized Splat Operator - Returns the List
output "latest_splat_instance_publicdns" {
  description = "Generalized latest Splat Operator"
  value = aws_instance.amazonlinux2[*].public_dns
}

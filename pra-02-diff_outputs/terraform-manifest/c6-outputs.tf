# 1. For loop with List
#  aws_instance.amzlinux2
# aws_instance.amzlinux2

# Output-1 for loop list 
output "for_loop_list" {
  description = "For loop with list"
  value = [ for instance in aws_instance.amzlinux2: instance.public_dns ]
}
/* OutPut Result is for output-1
  + for_loop_list                   = [
      + (known after apply),
      + (known after apply),
    ]
*/


# Output-2 for loop Map
# 2. For Loop with Map Advanced
output "for_output_map2" {
  description = "For Loop with Map - Advanced"
  value = { for c, instance in aws_instance.amzlinux2: c => instance.public_dns }
}
/* OutPut Result is for output-2
  + for_output_map2                 = {
      + "0" = (known after apply)
      + "1" = (known after apply)
    }
*/


# Output-3 for loop Splat operator
# 3. Legacy Splat Operator (Legacy) - Returns the List
output "legacy_splat_instance_publicdns" {
  description = "Legacy Splat Operator"
  value = aws_instance.amzlinux2.*.public_dns
}
/*  OutPut Result is for output-3
+ legacy_splat_instance_publicdns = [
      + (known after apply),
      + (known after apply),
*/

# Output-4 for loop Generalized splat operator
# 4. Latest Generalized Splat Operator - Returns the List
output "latest_splat_instance_publicdns" {
  description = "Generalized latest Splat Operator"
  value = aws_instance.amzlinux2[*].public_dns
}
/*  Out Put Result is for output-4
+ legacy_splat_instance_publicdns = [
      + (known after apply),
      + (known after apply),
*/


#Output-5 It is execute each value is equal to each key
# Filtered Output: Exclude Unsupported Availability Zones
# data.aws_ec2_instance_type_offerings.my_ins_type
output "output_type_V_0" {
  value = {
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type: 
    az => details.instance_types if length (details.instance_types) != 0
  }
}
/*  Out Put Result is for output-5
+ output_type_V_0                 = {
      + eu-west-3a = [
          + "t2.micro",
        ]
      + eu-west-3b = [
          + "t2.micro",
        ]
      + eu-west-3c = [
          + "t2.micro",
        ]
*/


# Output-6 for availabilty zones is not equal to zero
# data.aws_ec2_instance_type_offerings.my_ins_type
# Filtered Output: As the output is list now, get the first item from list (just for learning)
output "output_type_V_1" {
  value = keys({
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type: 
    az => details.instance_types if length(details.instance_types) != 0 })[0]
}
/*  Out Put Result is for output-6
     -->  output_type_V_1                 = "eu-west-3a"
*/


# Output-7 for availabilty zones for map  
# Filtered Output: with Keys Function - Which gets keys from a Map
# This will return the list of availability zones supported for a instance type
# data.aws_ec2_instance_type_offerings.my_ins_type
output "output_type_v_2" {
  value = keys({
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type: 
    az => details.instance_types if length (details.instance_types) != 0
  })
}
/*   Out Put Result for  output-7
    output_type_v_2                 = [
          + "eu-west-3a",
          + "eu-west-3b",
          + "eu-west-3c",
*/

#Output-8
# Create a Map with Key as Availability Zone and value as Instance Type supported
output "output_type_V_3" {
  value = {
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type: az => details.instance_types
  }
}
/*   Out Put Result for  output-8
  + output_type_V_3                 = {
      + eu-west-3a = [
          + "t2.micro",
        ]
      + eu-west-3b = [
          + "t2.micro",
        ]
      + eu-west-3c = [
          + "t2.micro",
        ]
    }
*/
# Terraform Output Variables

# EC2 instance public ip
# We can pass values under ec2 instance in c2 session
# For attributes we can refer: "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#attribute-reference"

output "instance_publicip" {
  description = "EC2 instance public ip"
  value = aws_instance.Demo-EC2-Instance.public_ip # value we can take c5 session under resources block, We can pass attributes also

}

# EC2 instance public dns
# For attributes we can refer: "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#attribute-reference"

output "instance_publicdns" {
  description = "EC2 instance public dns"
  value = aws_instance.Demo-EC2-Instance.public_dns # value we can take c5 session under resources block, We can pass attributes also
}
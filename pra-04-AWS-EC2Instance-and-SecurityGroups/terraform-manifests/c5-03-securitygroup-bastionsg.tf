# "https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest"
# Public Security Group
# AWS EC2 Security Group Terraform Module
# Security Group for Public Bastion Host

# module.public_bastion_sg.name 
# module.public_bastion_sg
module "public_bastion_sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"
  name        = "public-bastion-sg"
  # description = "Security group for web-server with HTTP ports open within VPC"
  description = "Security Group with SSH port open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id      = module.vpc.vpc_id
# Providing Ingress Rules & CIDR Blocks 
  ingress_rules            = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/16"]
# Providing Egress Rules & CIDR Blocks 
  egress_rules            = ["all-all"]
  #egress_cidr_blocks = ["10.10.0.0/16"]
  tags = local.common_tags

}
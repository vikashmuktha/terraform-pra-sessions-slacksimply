

# " https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/5.5.0 "
# AWS EC2 Instance Terraform Module
# Private Host - EC2 Instance that will be created in VPC Public Subnet

# module.vm_server

module "vm_server" {
  
  depends_on = [ module.vpc ] # VERY VERY IMPORTANT else userdata webserver provisioning will fail
  source                    = "terraform-aws-modules/ec2-instance/aws"
  version                   = "5.5.0"
  name                      = "${local.name}-${var.vpc_name}-vm-server"
  
  ami                       = data.aws_ami.amzlinux2.id
  instance_type             = var.instance_type
  key_name                  = var.key_name
  # monitoring              = true
  
  subnet_id = [
    module.vpc.private_subnets[0], 
    module.vpc.private_subnets[1]
  ]
  
  # subnet_id                 = module.vpc.private_subnets[0]  # private_subnets
  vpc_security_group_ids    = [module.private_sg.this_security_group_id]
  
  user_data                 = file("${path.module}/app-ins.sh") 
  tags                      = local.common_tags
  count                     = var.private_instance_count 
}



# " https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest "

# module.ec2_private
module "ec2_private" {

  depends_on                = [ module.vpc ] # VERY VERY IMPORTANT else userdata webserver provisioning will fail  
  source                    = "terraform-aws-modules/ec2-instance/aws"
  name                      = "${var.environment}-Privarte_vm's"
  version                   = "5.5.0" 
  ami                       = data.aws_ami.amzlinux2.id
  instance_type             = var.instance_type
  key_name                  = var.instance_keypair
  # monitoring              = true
  vpc_security_group_ids    = [ module.private_sg.this_security_group_id ]
  subnet_id                 = [ 
    var.vpc_private_subnets[0],
    var.vpc_private_subnets[1]
   ]
  instance_count            =  var.private_instance_count 
  user_data                 = file("${path.module}/app1-install.sh")
  tags                      = local.common_tags

}
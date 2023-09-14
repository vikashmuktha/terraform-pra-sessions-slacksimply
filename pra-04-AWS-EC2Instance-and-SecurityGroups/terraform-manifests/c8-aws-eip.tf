# " https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip "

# aws_eip.bastion_eip.public_ip
resource "aws_eip" "bastion_eip" {

  instance          = module.ec2_bastion.id[0]
  depends_on        = [ module.ec2_bastion, module.vpc ]
  vpc               = true
  tags              = local.common_tags

## Local Exec Provisioner:  local-exec provisioner (Destroy-Time Provisioner - Triggered during deletion of Resource)
  provisioner "local-exec" {
    command         = "echo Destroy time prov `date` >> destroy-time-prov.txt"
    working_dir     = "local-exec-output-files/"
    when            = destroy
    #on_failure = continue
  } 
}
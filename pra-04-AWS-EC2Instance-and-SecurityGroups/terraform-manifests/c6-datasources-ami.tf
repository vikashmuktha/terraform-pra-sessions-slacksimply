# "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami"

# data.aws_ami.amzlinux2.id
data "aws_ami" "amzlinux2" {
  #cexecutable_users    = ["self"]
  most_recent           = true
  # name_regex          = "^myami-\\d{3}"
  owners                = ["amzon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }  
}

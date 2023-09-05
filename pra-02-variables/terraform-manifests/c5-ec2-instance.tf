# Resources Block

/*Here we can pass multiple things 
    Step by step we can follow
    1) ami: under data block we can pass resource type, resource name and make sure define the attributes of ami like: id
        for aws_ami attriburtes we can refer: "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami#attribute-reference"
    2) instance type: under variable we can pass resource type .
    3) key name: we can create a key pair for persent working directory.
    4) security groups: under resource block we can pass the resource types with attributes.
        for security_group attributes we can refer: "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#attribute-reference"
    5) user data: we can pass the perfect path of the file: https://developer.hashicorp.com/terraform/language/functions/file
    6) Tags: We can pass the key value.
*/

resource "aws_instance" "Demo-EC2-Instance" {
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.instance_type
    key_name = var.instance_keypair
    vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]
    user_data = file("${path.module}/app1-install.sh")
    tags = {
        "Name" = "Demo-Instance"
    }
  
}

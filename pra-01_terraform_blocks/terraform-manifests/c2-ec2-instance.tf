# Block Type is Resource Block
# Here we can saw the Block type and Block labels 
resource "aws_instance" "my-demo-ec2" {  # First block label we can select by using cntl + space, then second block label {local name} we can give specific name for this label.
  ami = "ami-0041b98fa770e38cd" #Now we can pass the Argument name and Argument value then we can give ami, here we can hardcoded the value as of now 
  instance_type = "t2.micro"  #Then we can select instance type.
  user_data = file("${path.module}/app1-install.sh") # We can give file functin by using "https://developer.hashicorp.com/terraform/language/functions/file" and we can replace the file name like app1-install.sh i have this file in our directory.
  tags = {
    "Name" = "Myec2-demo"
  }

}
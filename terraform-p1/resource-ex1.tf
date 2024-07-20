resource "aws_instance" "ec2"{
  ami = data.aws_ami.resource-ext1.id
  instance_type = "t3.micro" 
  security_groups = [ data.aws_security_groups.resource-ext1.id ]
  tags = {
    name = "frontend"
  }
}
resource "aws_instance" "ec2"{
  ami = var.aim
  instance_type = "t3.micro" 
  vpc_security_group_ids = data.aws_security_groups.resource-ext1.ids
  tags = {
    Name = "frontend"
  }
}
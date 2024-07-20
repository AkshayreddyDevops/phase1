resource "aws_instance" "ec2"{
  ami = data.aws_ami.resource-ext1.image_id
  instance_type = "t3.micro" 
  vpc_security_group_ids = data.aws_security_groups.resource-ext1.ids
  tags = {
    name = "frontend"
  }
}
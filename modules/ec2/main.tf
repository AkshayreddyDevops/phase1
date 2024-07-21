resource "aws_instance" "test"{
  ami = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = ["sg-0690f9908ac885f47"]
  tags = {
    Name = "test"
  }
}
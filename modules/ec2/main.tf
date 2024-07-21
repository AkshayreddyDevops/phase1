resource "aws_instance" "test"{
  ami = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = ["sg-0690f9908ac885f47"]
  instance_type = "t3.micro"
  tags = {
    Name = "test"
  }
}

output "private_ip" {
  value = aws_instance.test.private_ip
}
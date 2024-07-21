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

resource "null_resource" "provisioner" {
  depends_on = [module.dns.dns_record]
   provisioner "remote-exec" {
  connection{
    user = "ec2-user"
    password = "DevOps321"
    host = aws_instance.test.private_ip
  }

  inline = [
    "pip-3.11 install ansible",
    "ansible-pull -i localhost, -U https://github.com/AkshayreddyDevops/Devops deploy_components.yml -e role=frontend -e ip=localhost"
  ]
 }
}
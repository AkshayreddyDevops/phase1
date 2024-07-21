data "aws_ami" "resource-ext1" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}


data "aws_security_groups" "resource-ext1" {
  filter {
    name   = "group-name"
    values = ["allow-all"]
  }
}

locals {
  ami = data.aws_ami.resource-ext1
}
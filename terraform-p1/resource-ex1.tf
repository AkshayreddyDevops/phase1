resource "aws_instance" "ec2"{
  for_each = var.instance_name
  ami = data.aws_ami.resource-ext1.image_id
  vpc_security_group_ids = data.aws_security_groups.resource-ext1.ids
  #instance_type = each.key
  tags = {
    Name = each.key
  }
}
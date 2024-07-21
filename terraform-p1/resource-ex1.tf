resource "aws_instance" "ec2"{
  for_each = var.instance_name
  ami = data.aws_ami.resource-ext1.image_id
  vpc_security_group_ids = data.aws_security_groups.resource-ext1.ids
  instance_type = each.value["type1"]
  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "dns_record" {
  for_each = var.instance_name
  zone_id = data.aws_route53_zone.name.id
  name = "${each.key}.edutech.online"
  type ="A"
  ttl = 30
  records = [data.aws_ami.resource-ext1["each.key"].private_ip]
}



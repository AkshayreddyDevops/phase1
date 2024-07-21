resource "aws_route53_record" "dns_record" {
  zone_id = "Z0314836TZ55HM33F8PT"
  name = "testmodule.edutech.online"
  type ="A"
  ttl = 30
  records = [var.private_ip]
}

module "ec2"{
  source = "./ec2"
  dns_creation = module.dns.check_dependence
}

module "dns" {
    source = "./dns"
    private_ip = module.ec2.private_ip
}

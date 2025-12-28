module "network" {
  source = "../../modules/vpc"

  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
}

module "security" {
  source = "../../modules/security"

  vpc_id = module.network.vpc_id
}

module "ec2" {
  source = "../../modules/ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type

  subnet_id         = module.network.public_subnet_ids[0]
  security_group_id = module.security.security_group_id

  key_name          = "projeto3-key"
  public_key        = file("${path.root}/../../../projeto3-key.pub")
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "ec2_public_ip" {
  value       = module.ec2.public_ip
  description = "IP público da EC2 para acesso Ansible e Web"
}
variable "subnet_id" {
  type        = string
  description = "ID da Subnet Pública"
}

variable "security_group_id" {
  type        = string
  description = "ID do Security Group"
}

variable "ami_id" {
  type        = string
  description = "AMI ID para a instância EC2"
}

variable "instance_type" {
  type        = string
  description = "Tipo da instância (ex: t3.micro)"
}

variable "public_key" {
  description = "Conteúdo da chave pública SSH"
  type        = string
}

variable "key_name" {
  type        = string
  description = "Nome da chave SSH na AWS"
}
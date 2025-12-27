variable "vpc_cidr" {
  description = "CIDR da VPC"
  type        = string
}

variable "public_subnets" {
  description = "Mapa de subnets públicas"
  type = map(object({
    cidr = string
    az   = string
  }))
}
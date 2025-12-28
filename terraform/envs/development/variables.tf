variable "aws_region" {
  type    = string
  default = "sa-east-1"
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
}

variable "ami_id" {
  type    = string
  default = "ami-0bde73fd629657a59"
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}
resource "aws_vpc" "project3" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpc-project3"
  }
}

resource "aws_subnet" "public" {
  for_each = var.public_subnets

  vpc_id                  = aws_vpc.project3.id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  tags = {
    Name = each.key
  }
}

resource "aws_internet_gateway" "project3" {
  vpc_id = aws_vpc.project3.id

  tags = {
    Name = "ig-project3"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.project3.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.project3.id
  }

  tags = {
    Name = "rt-public-project3"
  }
}

resource "aws_route_table_association" "public" {
  for_each = aws_subnet.public

  subnet_id      = each.value.id
  route_table_id = aws_route_table.public.id
}

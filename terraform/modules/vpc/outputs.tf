output "vpc_id" {
  description = "ID da VPC do Project3"
  value       = aws_vpc.project3.id
}

output "public_subnet_ids" {
  description = "IDs das subnets públicas do Project3"
  value       = [for s in aws_subnet.public : s.id]
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet" {
  value = aws_subnet.public[*].id
}

output "private_subnet" {
  value = aws_subnet.private[*].id
}

output "database_subnet" {
  value = aws_subnet.database[*].id
}

output "ig_gw" {
  value = aws_internet_gateway.gateway.id
}

output "elastic_ip" {
  value = aws_eip.nat.public_ip
}
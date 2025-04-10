output "public_subnet_1_id" {
  value = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.public_2.id
}

output "private_subnet_1_id" {
  value = aws_subnet.private_1.id
}

output "private_subnet_2_id" {
  value = aws_subnet.private_2.id
}

output "default_sg_id" {
  value = aws_security_group.default.id
}
output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}

output "nat_gateway_eip" {
  value = aws_eip.nat_eip.public_ip
}

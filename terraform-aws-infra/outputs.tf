output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = [for s in aws_subnet.public : s.id]
}

output "private_subnet_ids" {
  value = [for s in aws_subnet.private : s.id]
}

output "linux_instance_ids" {
  value = [for i in aws_instance.linux : i.id]
}

output "windows_instance_id" {
  value = aws_instance.windows.id
}

output "rds_endpoint" {
  value = aws_db_instance.mysql.address
}

output "vpc_id" {
  description = "ID of the created VPC."
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs."
  value       = [for subnet in aws_subnet.public : subnet.id]
}

output "private_subnet_ids" {
  description = "List of private subnet IDs."
  value       = [for subnet in aws_subnet.private : subnet.id]
}

output "availability_zones" {
  description = "Availability zones used by the deployment."
  value       = local.azs
}

output "internet_gateway_id" {
  description = "Internet gateway ID."
  value       = aws_internet_gateway.this.id
}

output "nat_gateway_id" {
  description = "NAT gateway ID (if enabled)."
  value       = var.enable_nat_gateway ? aws_nat_gateway.this[0].id : null
}

output "default_app_security_group_id" {
  description = "Baseline security group ID for application workloads."
  value       = aws_security_group.default_app.id
}

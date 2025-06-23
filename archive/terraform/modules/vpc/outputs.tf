output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.gov_vpc.id
}

output "cidr_block" {
  description = "CIDR block assigned to the VPC"
  value       = aws_vpc.gov_vpc.cidr_block
}
output "tgw_id" {
  description = "ID of the Transit Gateway"
  value       = aws_ec2_transit_gateway.gov_tgw.id
}

output "tgw_attachment_id" {
  description = "ID of the VPC attachment to the TGW"
  value       = aws_ec2_transit_gateway_vpc_attachment.gov_tgw_attachment.id
}
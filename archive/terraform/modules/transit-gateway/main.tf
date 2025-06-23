resource "aws_ec2_transit_gateway" "gov_tgw" {
  description                   = "Simulated GovCloud Transit Gateway"
  amazon_side_asn              = 64512
  auto_accept_shared_attachments = "enable"
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  dns_support                  = "enable"
  vpn_ecmp_support             = "enable"
  tags = {
    Name = var.tgw_name
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "gov_tgw_attachment" {
  subnet_ids         = var.subnet_ids
  transit_gateway_id = aws_ec2_transit_gateway.gov_tgw.id
  vpc_id             = var.vpc_id
  tags = {
    Name = "gov-tgw-attachment"
  }
}
resource "aws_vpc_ipam_pool_cidr" "vpc_block" {
  ipam_pool_id = var.ipam_pool_id
  cidr         = var.cidr
}

resource "aws_vpc" "gov_vpc" {
  cidr_block = aws_vpc_ipam_pool_cidr.vpc_block.cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
    Project = "GovCloud Landing Zone"
  }
}
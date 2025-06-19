resource "aws_vpc_ipam" "gov_ipam" {
  description = "Simulated GovCloud IPAM Pool"
  operating_regions {
    region_name = "us-east-1"  # Simulated region
  }
}

resource "aws_vpc_ipam_pool" "gov_pool" {
  address_family = "ipv4"
  ipam_scope_id  = aws_vpc_ipam.gov_ipam.private_default_scope_id
  locale         = "us-east-1"
  description    = "Simulated GovCloud IPv4 Pool"
  auto_import    = true
}
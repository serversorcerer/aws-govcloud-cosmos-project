output "gov_pool_id" {
  description = "The ID of the GovCloud simulated IPAM pool"
  value       = aws_vpc_ipam_pool.gov_pool.id
}
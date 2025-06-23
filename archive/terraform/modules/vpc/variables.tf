variable "ipam_pool_id" {
  type        = string
  description = "The IPAM pool ID to allocate a CIDR block from"
}

variable "cidr" {
  type        = string
  description = "The CIDR block to request from the IPAM pool"
}

variable "vpc_name" {
  type        = string
  description = "The name tag to assign to the VPC"
}
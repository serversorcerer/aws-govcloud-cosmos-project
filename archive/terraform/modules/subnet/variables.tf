variable "vpc_id" {
  type        = string
  description = "VPC to associate the subnets with"
}

variable "azs" {
  type        = list(string)
  description = "List of availability zones"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDRs for public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDRs for private subnets"
}

variable "name_prefix" {
  type        = string
  description = "Name prefix for subnets"
}
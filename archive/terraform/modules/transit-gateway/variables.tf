variable "vpc_id" {
  type        = string
  description = "VPC ID to attach to the Transit Gateway"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs to attach to the TGW"
}

variable "tgw_name" {
  type        = string
  default     = "gov-tgw"
  description = "Name tag for the Transit Gateway"
}
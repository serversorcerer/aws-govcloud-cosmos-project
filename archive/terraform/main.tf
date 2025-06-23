terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  alias  = "govcloud"
  region = "us-east-1"  # Simulated govcloud
}

module "ipam" {
  source = "./terraform/modules/ipam"
}

module "vpc" {
  source        = "./terraform/modules/vpc"
  ipam_pool_id  = module.ipam.gov_pool_id
  cidr          = "10.0.0.0/16"
  vpc_name      = "gov-vpc-01"
}

module "subnet" {
  source               = "./terraform/modules/subnet"
  vpc_id               = module.vpc.vpc_id
  azs                  = ["us-east-1a", "us-east-1b"]
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24"]
  name_prefix          = "gov"
}

module "transit_gateway" {
  source     = "./terraform/modules/transit-gateway"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.subnet.public_subnet_ids
  tgw_name   = "gov-tgw"
}
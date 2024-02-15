## Author : ARUNKUMAAR R
## Description : Creating VPC in AWS using Terraform Modules
## Date : 15/02/24
## Language : HCL

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name            = var.VPC
  cidr            = var.VPC-CIDR
  azs             = [var.ZONE1, var.ZONE2, var.ZONE3]
  public_subnets  = [var.PUB-SUB1-CIDR, var.PUB-SUB2-CIDR]
  private_subnets = [var.PVT-SUB1-CIDR, var.PVT-SUB2-CIDR]

  enable_dns_hostnames = true
  enable_dns_support   = true
  enable_nat_gateway   = true
  single_nat_gateway   = true

  tags = {
    Terraform   = "true"
    Environment = "Prod"
  }

  vpc_tags = {
    Name = var.VPC
  }
}

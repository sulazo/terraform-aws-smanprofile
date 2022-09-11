
################################################################################
# VPC Module
################################################################################

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = var.VPC_NAME
  cidr   = var.VpcCIDR
  #   azs             = ["${local.region}a", "${local.region}b", "${local.region}c"]
  azs             = [var.zone1, var.zone2, var.zone3]
  private_subnets = [var.PrivSub1CIDR, var.PrivSub2CIDR, var.PrivSub3CIDR]
  public_subnets  = [var.PubSub1CIDR, var.PubSub2CIDR, var.PubSub3CIDR]

  ####################
  enable_dns_hostnames = true
  enable_dns_support   = true
  enable_nat_gateway   = true
  single_nat_gateway   = true


  ####################tags? general attributes ?????
  tags = {
    Terraform   = "true"
    Environment = "Prod"
  }
  vpc_tags = {
    Name = var.VPC_NAME

  }
}



# Route tables will be created by default and link the subnets and also internet gateway



# module "vpc" {
#   source = "terraform-aws-modules/vpc/aws"
#   name = var.VPC_NAME
#   cidr = var.VPC_CIDR
#   // azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
#   azs = [var.avzone1, var.avzone2, var.avzone3]

#   #   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

#   private_subnets = [var.PrivSub1CIDR, var.PrivSub2CIDR, var.PrivSub3CIDR]
#   public_subnets  = [var.PubSub1CIDR, var.PubSub2CIDR, var.PubSub3CIDR]

#   enable_nat_gateway = true
#   single_nat_gateway = true
#   # enable_vpn_gateway = true
#    enable_dns_hostnames = true
#   enable_dns_support   = true

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }
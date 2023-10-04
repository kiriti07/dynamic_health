module "vpc" {
  source  = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  public_subnet_1_cidr   = var.public_subnet_1_cidr
  public_subnet_2_cidr   = var.public_subnet_2_cidr
  private_subnet_1_cidr  = var.private_subnet_1_cidr
  private_subnet_2_cidr  = var.private_subnet_2_cidr
  private_subnet_3_cidr  = var.private_subnet_3_cidr
  private_subnet_4_cidr  = var.private_subnet_4_cidr
  public_subnet_1_az     = var.public_subnet_1_az
  public_subnet_2_az     = var.public_subnet_2_az
  private_subnet_1_az    = var.private_subnet_1_az
  private_subnet_2_az    = var.private_subnet_2_az
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
  owners = ["amazon"]
}

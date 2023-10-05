data "aws_vpc" "existing_vpc" {
    id = var.vpc_id
}

data "aws_subnet" "example" {
  id = var.subnet_id
  
}
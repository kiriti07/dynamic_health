# This data source fetches details of an existing VPC (Virtual Private Cloud) in AWS.
data "aws_vpc" "existing_vpc" {
    id = var.vpc_id
}


# This data source fetches details of an existing subnet in AWS.
data "aws_subnet" "example" {
  id = var.subnet_id
  
}
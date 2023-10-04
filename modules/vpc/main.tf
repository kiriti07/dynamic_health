resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "my-igw"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_1_cidr
  availability_zone       = var.public_subnet_1_az
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet 1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_2_cidr
  availability_zone       = var.public_subnet_2_az
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet 2"
  }
}

resource "aws_subnet" "private_app_subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_1_cidr
  availability_zone = var.private_subnet_1_az
  tags = {
    Name = "Pvt Subnet us-east-1a"
  }
}

resource "aws_subnet" "private_app_subnet_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_2_cidr
  availability_zone = var.private_subnet_2_az
  tags = {
    Name = "Pvt Subnet us-east-1b"
  }
}

resource "aws_subnet" "private_app_subnet_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_3_cidr
  availability_zone = var.private_subnet_1_az
  tags = {
    Name = "Pvt Data Subnet us-east-1a"
  }
}

resource "aws_subnet" "private_app_subnet_4" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_4_cidr
  availability_zone = var.private_subnet_2_az
  tags = {
    Name = "Pvt Data Subnet us-east-1b"
  }
}

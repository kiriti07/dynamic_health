variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default     = "Development VPC"
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for Public Subnet 1"
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for Public Subnet 2"
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for Private Subnet 1"
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for Private Subnet 2"
}

variable "private_subnet_3_cidr" {
  description = "CIDR block for Private Subnet 1"
}

variable "private_subnet_4_cidr" {
  description = "CIDR block for Private Subnet 2"
}

variable "public_subnet_1_az" {
  description = "Availability Zone for Public Subnet 1"
}

variable "public_subnet_2_az" {
  description = "Availability Zone for Public Subnet 2"
}

variable "private_subnet_1_az" {
  description = "Availability Zone for Private Subnet 1"
}

variable "private_subnet_2_az" {
  description = "Availability Zone for Private Subnet 2"
}
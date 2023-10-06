variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "subnet_id1" {
  description = ""
  type        = string
}

variable "secret_id" {
  description = "Secret Manager Secret ID for RDS credentials"
  type        = string
}

variable "allocated_storage" {
  description = ""
  type        = number
}

variable "engine" {
  description = ""
  type        = string
}

variable "engine_version" {
  description = ""
  type        = string
}

variable "instance_class" {
  description = ""
  type        = string
}

variable "db_name" {
  description = ""
  type        = string
}

variable "parameter_group_name" {
  description = ""
  type        = string
}

variable "skip_final_snapshot" {
  description = ""
  type        = bool
}

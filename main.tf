provider "aws" {
  region  = "us-east-1"
  access_key = "AKIAY6474BAUGNS5UKEP"
  secret_key = "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"
}


module "ec2" {
  source       = "./modules/ec2"
  instance_type = var.instance_type
  ami           = var.ami
  vpc_id = var.vpc_id
  subnet_id     = var.subnet_id
}

module "rds" {
  source    = "./modules/rds"
  secret_id = var.secret_id
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_name              = var.db_name
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot
  subnet_id            = var.subnet_id
}

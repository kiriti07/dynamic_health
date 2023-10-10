provider "aws" {
  region  = "us-east-1"
  access_key = "AKIAY6474BAUGNS5UKEP"
  secret_key = "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"
}


# EC2 module configuration.
module "ec2" {
  source       = "./modules/ec2"           # Path to the EC2 module source.
  instance_type = var.instance_type         # EC2 instance type passed to the module.
  ami           = var.ami                   # AMI ID passed to the module.
  subnet_id     = data.aws_subnet.example.id
}

# RDS database module configuration
module "rds" {
  source              = "./modules/rds"  
  secret_id           = var.secret_id  
  subnet_ids          = [var.subnet_id, var.subnet_id1]  
}
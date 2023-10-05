module "ec2" {
  source       = "./modules/ec2"
  instance_type = var.instance_type
  ami           = var.ami
  vpc_id        = var.vpc_id
  subnet_id     = var.subnet_id
}

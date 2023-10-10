# Ceating AWS EC2 Instance
resource "aws_instance" "example" {
  instance_type = var.instance_type
  ami           = var.ami
  subnet_id     = var.subnet_id

  tags = {
    Name = "example-instance"
  }
}

resource "aws_instance" "example" {
  instance_type = var.instance_type
  ami           = var.ami
  subnet_id     = data.aws_subnet.example.id

  tags = {
    Name = "example-instance"
  }
}

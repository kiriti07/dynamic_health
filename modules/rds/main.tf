resource "aws_db_subnet_group" "example" {
  name       = "subnet-main"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "My DB subnet group"
  }
}


resource "aws_db_instance" "example" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_name              = var.db_name
  username             = jsondecode(data.aws_secretsmanager_secret_version.db_credentials.secret_string)["username"]
  password             = jsondecode(data.aws_secretsmanager_secret_version.db_credentials.secret_string)["password"]
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot
  db_subnet_group_name = aws_db_subnet_group.example.name
}

data "aws_secretsmanager_secret_version" "db_credentials" {
  secret_id = var.secret_id
}

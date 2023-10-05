resource "aws_db_instance" "example" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_name              = var.db_name
  username             = data.aws_secretsmanager_secret_version.db_credentials.secret_string["username"]
  password             = data.aws_secretsmanager_secret_version.db_credentials.secret_string["password"]
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot
}

data "aws_secretsmanager_secret_version" "db_credentials" {
  secret_id = var.secret_id
}

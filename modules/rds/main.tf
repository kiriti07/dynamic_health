# Creating AWS DB Subnet Group
resource "aws_db_subnet_group" "example" {
  name       = "main-subnet"                     # Name of the DB subnet group.
  subnet_ids = var.subnet_ids             # List of subnet IDs to associate with the DB subnet group.

  tags = {
    Name = "My DB subnet group"           # Tag to assign to the DB subnet group.
  }
}

# This data source fetches details of an existing RDS (Relational Database Service) instance in AWS.
data "aws_db_instance" "example" {
  db_instance_identifier = "database-1"  # ID of the existing RDS instance to fetch data from.
}


# Outputs to display fetched values for the specified RDS instance.
output "example_db_name" {
  value = data.aws_db_instance.example.db_name
}

# Data source to fetch the current version of the specified secret from AWS Secrets Manager.
data "aws_secretsmanager_secret_version" "db_credentials" {
  secret_id = var.secret_id
}

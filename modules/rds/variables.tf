variable "secret_id" {
  description = "Secret Manager Secret ID for RDS credentials"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS DB"
  type        = list(string)
}

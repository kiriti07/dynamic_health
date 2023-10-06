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

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS DB"
  type        = list(string)
}

variable "db_username" {
  description = "Username for the DB."
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "The password of the DB"
  type = string
  sensitive = true
}
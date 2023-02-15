provider "aws" {
  region = "eu-west-1"
}

resource "aws_db_instance" "example" {
  identifier_prefix = "terraform-poc"
  engine = "mysql"
  allocated_storage = 10
  instance_class = "db.t2.micro"
  skip_final_snapshot = true
  db_name = "example_databse"

  username = var.db_username
  password = var.db_password
}
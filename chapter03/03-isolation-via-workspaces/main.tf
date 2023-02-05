provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0b752bf1df193a6c4"
  instance_type = terraform.workspace == "staging" ? "t2.micro" : "t2.small"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-acperez"
    key    = "workspaces-example/terraform.tfstate"
    region = "eu-west-1"

    dynamodb_table = "terraform-state-acperez-locks"
    encrypt        = true
  }
}

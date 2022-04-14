provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "s3bhargav"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamodb"
  }
}

resource "aws_instance" "web" {
  ami   = "ami-0e472ba40eb589f49"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

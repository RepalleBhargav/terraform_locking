provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "mydev-tf-state-bucket001"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "Bhargavrbs"
  }
}

resource "aws_instance" "web" {
  ami   = "ami-03ededff12e34e59e"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

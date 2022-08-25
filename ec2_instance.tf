terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance"  "app_server" {
  ami           = "ami-03e0b06f01d45a4eb"
  instance_type = "t2.micro"

  tags = {
    Name = "Dor Doanis instance"
  }
}

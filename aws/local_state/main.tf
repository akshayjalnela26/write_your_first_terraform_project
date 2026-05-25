terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.46" # Modern AWS Provider line for May 2026
    }
  }

  required_version = ">= 1.15.0" # Modern core Terraform standard
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0022cea480ff4920c" # Hardcoded specific AMI ID from AWS
  instance_type = "t3.micro"               # Modern Free Tier standard

  tags = {
    Name = "Terraform_Demo"
  }
}

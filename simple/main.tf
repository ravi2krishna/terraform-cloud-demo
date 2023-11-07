# Simple Scenario

# AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

# EBS Volume
resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-2a"
  size              = 5

  tags = {
    Name = "tf-cloud-volume"
  }
}
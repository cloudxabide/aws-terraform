terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                  = var.aws_region 
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = var.aws_profile
}

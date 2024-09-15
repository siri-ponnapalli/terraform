terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
  backend "s3" {
    bucket = "siri-20-10-1997"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "tf-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
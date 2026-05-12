terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "adarsh-terraform-demo-987654"
}

resource "aws_dynamodb_table" "demo_table" {
  name         = "terraform-demo-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"


  attribute {
    name = "id"
    type = "S"
  }
}

resource "aws_iam_user" "demo_user" {
  name = "terraform-demo-user"
}
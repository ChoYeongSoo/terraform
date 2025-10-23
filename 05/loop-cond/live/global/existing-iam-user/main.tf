terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "createuser" {
  # count = length(var.user_names)
  for_each = toset(var.user_names)

  # Make sure to update this to your own user name!
  name = each.key
}


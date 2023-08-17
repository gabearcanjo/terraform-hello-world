# PROVIDER
terraform {

  required_version = "~> 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.10"
    }
  }

  backend "s3" {
    bucket         = "tf-terraform-hello-world-state-arcanjo"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-terraform-hello-world-state-v1"
    region         = "us-east-1"
  }

}
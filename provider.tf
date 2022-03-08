terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.4.0"
    }
  }
}

provider "aws" {
  access_key = var.ac_key
  secret_key = var.scrt_key
  region      = var.region
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.58"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.6"
    }
  }
}

provider "aws" {
  region = var.region
}

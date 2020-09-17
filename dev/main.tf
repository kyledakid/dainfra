terraform {
  required_version = ">= 0.13.0"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "elyk"

    workspaces {
      prefix = "dainfra-dev"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name           = var.project
  cidr           = var.cidr
  azs            = var.azs
  public_subnets = var.public_subnets

  tags = {
    Owner       = var.project
    Environment = var.env
  }
  vpc_tags = {
    Name = var.project
  }
}

terraform {
  required_version = ">= 0.13.0"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "elyk"

    workspaces {
      prefix = "dainfra"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source  = "terraform-aws-modules/vpc"

  name            = var.project
  cidr            = var.cidr
  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  tags = {
    Owner       = var.project
    Environment = terraform.workspace
  }
  vpc_tags = {
    Name = var.project
  }
}

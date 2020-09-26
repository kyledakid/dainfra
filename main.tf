terraform {
  required_version = ">= 0.13.0"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "elyk"

    # add comment
    workspaces {
      prefix = "dainfra-"
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
    Environment = var.env[env.TFC_WORKSPACE_NAME]
  }
  vpc_tags = {
    Name = env.TFC_WORKSPACE_NAME
  }
}

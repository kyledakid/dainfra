terraform {
  required_version = ">= 0.13.0"
  hostname         = "app.terraform.io"
  organization     = "elyk"

  workspaces {
    prefix = "dainfra-"
  }
}

provider "aws" {
  region = var.region
}

locals {
  workspace = trimprefix(var.TFC_WORKSPACE_NAME, "dainfra-")
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name           = var.project
  cidr           = var.cidr
  azs            = var.azs
  public_subnets = var.public_subnets

  tags = {
    Owner       = var.project
    Environment = var.env[local.workspace]
  }
  vpc_tags = {
    Name = var.project
  }
}

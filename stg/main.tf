terraform {
    required_version = ">= 0.13.0"

    backend "remote" {
        hostname = "app.terraform.io"
        organization = "elyk"

        workspaces {
          name = "dainfra-dev"
        }
    }
}

provider "aws" {}

variable "region" {
  description = "AWS Region"
  type        = string
}

variable "public_subnets" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "env" {
  type = string
}

variable "project" {
  description = "Project Name"
  type        = string
}

variable "cidr" {
  description = "VPC CIDR"
  type        = string
}

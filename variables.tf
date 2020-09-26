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
  type = map
}

variable "project" {
  description = "Project Name"
  type        = string
}

variable "cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "TFC_WORKSPACE_NAME" {
    type = string
}


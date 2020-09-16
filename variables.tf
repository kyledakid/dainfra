variable "region" {
  description = "AWS Region"
  type        = string
}

variable "private_subnets" {
  type = list(string)
}

variable "public_subnets" {
  type = list(string)
}

variable "project" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "cidr" {
  type = string
}


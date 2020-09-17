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

region = "us-east-1"
azs = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c"
]
env = {
  "dainfra-dev" : "dev",
  "dainfra-stg" : "stg",
  "dainfra-prd" : "prd",
}
cidr = "172.16.0.0/16"
public_subnets = [
  "172.16.1.0/24",
  "172.16.2.0/24",
  "172.16.3.0/24",
]

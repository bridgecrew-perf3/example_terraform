variable "region" {
  type    = string
  default = "us-east-2"
}

### vpc
variable "vpc_name" {
  type = string
}

variable "cidr" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "one_nat_gateway_per_az" {
  description = "Setup one NAT gateway in each az if true, otherwise all AZ will share one NAT gateway"
  type        = bool
  default     = false
}


# variable "subnet_group" {
#   type = map(any)
# }

# variable "subnet_group_name" {
#   type = string
# }

variable "peer_vpc_id" {
  type = string
}

variable "peer_cidr" {
  type = string
}

variable "private_subnets" {
  type = list(any)
}

variable "public_subnets" {
  type = list(any)
}

### eks
variable "worker_groups_launch_template" {
  type    = list(any)
  default = []
}

variable "eks_users" {
  type    = map(any)
  default = {}
}

variable "eks_roles" {
  type    = map(any)
  default = {}
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "aws_availability_zones" {
  type    = list(any)
  default = []
}

variable "eks_cluster_version" {
  type    = string
  default = ""
}

variable "environment" {
  type    = string
  default = ""
}




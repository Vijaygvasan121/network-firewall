variable "super_cidr_block" {
  type    = string
  default = "10.0.0.0/8"
}

locals {
  spoke_vpc_a_cidr    = cidrsubnet(var.super_cidr_block, 8, 10)
  spoke_vpc_b_cidr    = cidrsubnet(var.super_cidr_block, 8, 11)
  inspection_vpc_cidr = cidrsubnet(var.super_cidr_block, 8, 255)
} 

variable "aws_region" {
description = "Region"
type = string
default = "ap-south-1"    #change the region wrt to reqiurement
}


variable "aws_availability_zone" {
description = "Availability Zone1"
type = string
default = "ap-south-1a"
}

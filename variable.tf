variable "region" {
  type 		= string
  description 	= "The region you'd like to deploy in"
}

variable "aws_profile" {
  type 		= string
  description 	= "The AWS CLI profile you'd like to use"
}

variable "keypair_name" {
  type 		= string
  description	= "The name of the EC2 keypair you'd like to generate"
}

variable "keypair_filename" {
  type 		= string
  description	= "The local filename of the EC2 keypair you generated"
}

variable "vpc_name" {
  type 		= string
  description 	= "The name of the VPC you'd like to create"
}

variable "vpc_cidr" {
  type 		= string
  description	= "The network for your VPC in CIDR notation"
}

variable "availability_zone_1" {
  type		= string
  description 	= "An availablity zone in the region you chose"
}

variable "availability_zone_1_cidr" {
  type 		= string
  description 	= "The network for availability_zone_1 in CIDR notation"
}

variable "availability_zone_2" {
  type		= string
  description 	= "An availablity zone in the region you chose"
}

variable "availability_zone_2_cidr" {
  type 		= string
  description 	= "The network for availability_zone_1 in CIDR notation"
}

variable "cert_domain" {
  type		= string
  description	= "The domain name you want a cert for. Supports wildcards"
}

variable "domain" {
  type		= string
  description 	= "The base domain name (ie - example.com)"
}

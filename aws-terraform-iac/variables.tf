variable "aws_region" {}
variable "vpc_cidr" {}
variable "public_subnet_1_cidr" {
  description = "CIDR block for the first public subnet"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for the second public subnet"
  type        = string
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for the first private subnet"
  type        = string
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for the second private subnet"
  type        = string
}

variable "instance_type" {}
variable "ami_id" {}

variable "db_engine" {}
variable "db_instance_class" {}
variable "db_name" {}
variable "db_username" {}
variable "db_password" {}

variable "bucket_name" {}
variable "key_name" {
  description = "The name of the EC2 key pair to SSH into instances"
  type        = string
}

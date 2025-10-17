variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_name" {
  type    = string
  default = "demo-vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "azs" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "key_name" {
  type        = string
  description = "EC2 key pair name"
}

variable "linux_ami_id" {
  type        = string
  description = "AMI ID for Ubuntu EC2"
}

variable "windows_ami_id" {
  type        = string
  description = "AMI ID for Windows EC2"
}

variable "linux_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "windows_instance_type" {
  type    = string
  default = "t2.medium"
}

variable "db_username" {
  type    = string
  default = "appuser"
}

variable "db_password" {
  type      = string
  sensitive = true
  default   = "StrongPass#123"
}

variable "db_instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "db_allocated_storage" {
  type    = number
  default = 20
}

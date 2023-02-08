terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}


resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_ids
  key_name               = var.key_name
  user_data              = var.user_data
  iam_instance_profile   = var.instance_profile
  vpc_security_group_ids = var.security_groups
  tags = {
    "Name"            = var.instance_name
    "Service Role"    = "EC2 Instance"
  }
}

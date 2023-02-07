resource "aws_instance" "instance" {
  ami                    = var.input_vars.ami
  instance_type          = var.input_vars.instance_type
  subnet_id              = var.input_vars.subnet_ids
  key_name               = var.input_vars.key_name
  user_data              = var.input_vars.user_data
  iam_instance_profile   = var.input_vars.instance_profile
  vpc_security_group_ids = var.input_vars.security_groups
  tags = {
    "Name"            = var.input_vars.instance_name
    "Service Role"    = "EC2 Instance"
  }
}

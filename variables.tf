#variable "input_vars" {
#  type = object({
#      instance_type     = string
#      ami               = string
#      subnet_ids        = string
#      security_groups   = list(string)
#      key_name          = string
#      instance_name     = string
#      instance_profile  = optional(string)
#      user_data         = optional(string, "")
#  })
#}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ami" {
  type        = string
  description = "The description of the VM"
}

variable "subnet_ids" {
  type        = string
  description = "The list of subnet used by the instance"
}

variable "security_groups" {
  type        = list(string)
  description = "The list of security groups used by the instance"
}

variable "key_name" {
  type        = string
  description = "The key used to ssh into the instance"
}

variable "instance_name" {
  type        = string
  description = "The name of the instance"
}

variable "instance_profile" {
  type        = string
  description = "The name of the instance profile"
}

variable "user_data" {
  type        = string
  description = "User data to apply on instance"
}


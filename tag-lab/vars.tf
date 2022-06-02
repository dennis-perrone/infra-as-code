variable "region" {
  description = "Value of the default region"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami" {
  type = map
  description ="Defining default ami to be utilized"
  default = {
    us-east-1 = "ami-0022f774911c1d690"
  }
}

# Creating a Variable for instance_type
variable "instance_type" {    
  type = string
}
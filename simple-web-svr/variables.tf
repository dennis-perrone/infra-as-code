variable "region" {
  description = "Define the default region"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "Define which AMI to utilize"
  type        = string
  default     = "ami-0cff7528ff583bf9a"
}

variable "instance_type" {
  description = "Define the default instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "TerraformWebServer"
}
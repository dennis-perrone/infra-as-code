terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "web_server" {
  ami                    = "ami-0022f774911c1d690"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data = <<EOF
              #!/bin/bash
              sudo yum -y update
              sudo yum -y install httpd
              echo "Hello, World from Terraform" > index.html
              sudo systemctl enable httpd.service --now
              EOF

  tags = {
    Name      = var.instance_name
    Terraform = "true"
  }
}


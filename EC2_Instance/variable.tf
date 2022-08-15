variable "ami_id" {
  type = map

  default = {
    "us-east-1" = "ami-04169656fea786776"
    "us-west-1" = "ami-006fce2a9625b177f"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "env" {
  default = "Dev"
}


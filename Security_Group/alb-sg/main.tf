# ---------------------------------------------------------------------------------------------------------------------
# SECURITY GROUP FOR ALB
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.stack}_main"
  }
}

locals {
  source_port      = 80
  destination_port = 80
  default_cidr     = "0.0.0.0/0"
}

resource "aws_security_group" "alb-sg" {
  name        = "${var.stack}-alb-sg"
  description = "ALB Security Group"
  vpc_id      = aws_vpc.main.id


  ingress {
    protocol    = "tcp"
    from_port   = local.source_port
    to_port     = local.destination_port
    cidr_blocks = [local.default_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [local.default_cidr]
  }
  tags = {
    Name = "${var.stack}-alb-sg"
  }
}
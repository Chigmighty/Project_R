resource "aws_instance" "web" {
  ami                         = lookup(var.ami_id,var.aws_region)
  instance_type               = var.instance_type
  key_name                    = "run"
  associate_public_ip_address = true
  availability_zone           = "${var.aws_region}a"

  tags = {
    Name = "${var.env}_web"
  }
}
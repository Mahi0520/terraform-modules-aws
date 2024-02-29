provider "aws" {
  region = "ap-south-1"
}

resource "aws_lb_target_group" "my_target_group" {
  name = var.target_group_name
  port = var.target_group_port
  protocol = "HTTP"
  target_type = var.target_group_type
  vpc_id = var.vpc_id
}

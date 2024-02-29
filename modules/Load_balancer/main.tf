provider "aws" {
  region = "ap-south-1"
}

resource "aws_elb" "demoelb" {
  name = var.elb_name
  subnets = var.elb_subnets
  security_groups = var.elb_security_groups
  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }
}

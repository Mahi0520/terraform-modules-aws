variable "elb_name" {
  description = "Name of the Elastic Load Balancer"
  type        = string
}

variable "elb_subnets" {
  description = "List of subnets for the Elastic Load Balancer"
  type        = list(string)
}

variable "elb_security_groups" {
  description = "List of security groups for the Elastic Load Balancer"
  type        = list(string)
}


# Add more variables as needed

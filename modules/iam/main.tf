provider "aws" {
  region = "ap-south-1"
}

variable "user_name" {

}
variable "group_membership" {

}

resource "aws_iam_user" "iam_user" {
  name = var.user_name

  # Add more user attributes as needed

  # Example of attaching user to IAM groups
  for_each = toset(var.group_membership)

  lifecycle {
    create_before_destroy = true
  }
}

# Add more resources and configurations as needed

provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-03f4878755434977f"
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-06ee3c6c63f90a17f"
}

module "s3_bucket" {
  source = "./modules/s3_bucket"
  bucket_names = "vedan"
}

module "iam_user1" {
  source = "./modules/iam"
  user_name = "usermahi123"
  group_membership = ["group1", "group2"]
}

module "elb" {
  source = "./modules/load_balancer"
  elb_name = "mahilb"
  elb_subnets = ["subnet-0c40ec2bd4a6078d9","subnet-06ee3c6c63f90a17f"]
  elb_security_groups = ["sg-06a13f867df186b2d","sg-03cd61c753e518e4d"]
}

module "targetgroup" {
  source = "./modules/targetgroup"
  target_group_name = "mahitg"
  target_group_type = "instance"
  vpc_id = "vpc-061227211d98d1184"
  target_group_port = "80"

}

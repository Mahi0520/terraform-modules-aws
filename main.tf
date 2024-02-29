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
  user_name = "usermahi"
  group_membership = ["group1", "group2"]
}

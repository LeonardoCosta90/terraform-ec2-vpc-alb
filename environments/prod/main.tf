provider "aws" {}

module "vpc" {
  source = "../../modules/vpc"
  environment = "prod"
}

module "ec2" {
  source = "../../modules/ec2"
  environment = "prod"
  instance_type = "t2.micro"
}

module "alb" {
  source = "../../modules/alb"
  environment = "prod"
}
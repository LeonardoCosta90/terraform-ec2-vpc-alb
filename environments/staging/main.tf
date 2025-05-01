provider "aws" {}

module "vpc" {
  source = "../../modules/vpc"
  environment = "staging"
}

module "ec2" {
  source = "../../modules/ec2"
  environment = "staging"
  instance_type = "t2.micro"
}

module "alb" {
  source = "../../modules/alb"
  environment = "staging"
}
provider "aws" {
  region = var.AwsRegion
}

module "production-infrastructure" {
  source = "../modules/infrastructure"
  AwsRegion = var.AwsRegion
  Vpc = var.Vpc
  AutoScalingGroup = var.AutoScalingGroup
  EnvName = var.EnvName
  KeyPair = var.KeyPair
  AMI = var.AMI
}

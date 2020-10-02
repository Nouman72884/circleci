provider "aws" {
  region = var.AwsRegion
}

module "production-infrastructure" {
  source = "../../modules/infrastructure"

}

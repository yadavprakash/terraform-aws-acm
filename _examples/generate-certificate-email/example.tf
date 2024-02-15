provider "aws" {
  region = "us-west-1"
}

module "acm" {
  source                    = "./../../"
  name                      = "certificate"
  environment               = "test"
  validate_certificate      = false
  domain_name               = ""
  subject_alternative_names = ["opsstation"]
  validation_method         = "EMAIL"
}

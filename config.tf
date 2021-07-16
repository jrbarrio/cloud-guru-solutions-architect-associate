terraform {
  backend "s3" {
    bucket = "cloud-guru-solutions-architect-associate-state"
    region = "eu-central-1"

    dynamodb_table = "cloud-guru-solutions-architect-associate-locks"
    encrypt = true
  }
}

provider "aws" {
  region = "eu-central-1"
}

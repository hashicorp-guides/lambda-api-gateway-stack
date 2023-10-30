required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.7.0"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }
}

provider "aws" "this" {
  config {
    region = var.region
    web_identity_token_file = var.identity_token_file

    assume_role {
      role_arn = var.role_arn
    }
  }
}

provider "random" "this" {}

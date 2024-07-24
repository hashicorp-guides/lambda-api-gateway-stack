# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "aws" {
  audience = ["<Set to your AWS IAM assume-role audience>"]
}

deployment "production" {
  inputs = {
    region              = "us-east-1"
    role_arn            = "<Set to your AWS IAM OIDC role ARN>"
    identity_token_file = identity_token.aws.jwt_filename
    default_tags      = { stacks-preview-example = "lambda-api-gateway-stack" }
  }
}

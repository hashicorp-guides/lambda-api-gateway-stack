identity_token "aws" {
  audience = ["<Set to your AWS IAM assume-role audience>"]
}

deployment "us-east-1" {
  variables = {
    region              = "us-east-1"
    role_arn            = "<Set to your AWS IAM OIDC role ARN>"
    identity_token_file = identity_token.aws.jwt_filename
  }
}

identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "us-east-1" {
  variables = {
    region              = "us-east-1"
    role_arn            = "<Edit your deployment configuration to set this value (deployments.tfdeploy.hcl)>"
    identity_token_file = identity_token.aws.jwt_filename
  }
}

# lambda-api-gateway-stack

An example Terraform Stack that provisions an AWS S3 bucket, an AWS Lambda function served from that bucket,
and an AWS API Gateway to invoke that function at a URL.

Three components are used:

* `s3` uses a module to define the S3 bucket and necessary permissions for that bucket.
* `lambda` uses a module which contains a Ruby class, packaged and uploaded to the bucket defined by
  the `s3` component, and creates an AWS Lambda function with it.
* `api-gateway` uses a module which exposes an HTTP endpoint to invoke the function defined by the
  `lambda` component.

## Usage

1. Provision the stack (usage docs for that elsewhere). Set the IAM role ARN you used when
   configuring OIDC in `deployments.tfdeploy.hcl`.
2. Profit! Go to the URL defined in the outputs of the `api-gateway` component. Change your name by
   using the query string paramter `name` (e.g.
   `xxx.execute-api.us-east-1.amazonaws.com/serverless_lambda_stage/hello?name=Alisdair`)

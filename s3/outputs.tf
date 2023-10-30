output "bucket_id" {
  description = "The ID of the S3 bucket to be used by a downstream component in this stack."

  value = aws_bucket.lambda_bucket.id
}

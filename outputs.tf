output "bucket" {
  value         = aws_s3_bucket_policy.this.bucket
  description   = "(Required) The name of the bucket to which to apply the policy."
}

output "policy" {
  value         = aws_s3_bucket_policy.this.policy
  description             = <<DOC
  "(Required) The text of the policy. Although this is a bucket policy rather than an IAM policy, the aws_iam_policy_document data source may be used,
   so long as it specifies a principal. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
   Note: Bucket policies are limited to 20 KB in size."
   DOC
}
output "context" {
  value       = var.context
  description = "Exported context from input variable"
}

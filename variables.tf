variable "bucket" {
  type                    = string
  description             = "(Required) The name of the bucket to which to apply the policy."
}

variable "policy" {
  type                    = string
  description             = <<DOC
  "(Required) The text of the policy. Although this is a bucket policy rather than an IAM policy, the aws_iam_policy_document data source may be used,
   so long as it specifies a principal. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
   Note: Bucket policies are limited to 20 KB in size."
   DOC
}

variable "context" {
  type = object({
    organization = string
    environment  = string
    account      = string
    product      = string
    tags         = map(string)
  })
  description = "Default context for naming and tagging purpose"
}

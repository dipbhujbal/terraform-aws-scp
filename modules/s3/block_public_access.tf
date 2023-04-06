

data "aws_iam_policy_document" "deny_buckets_public_access_doc" {
  statement {
    sid    = "DenyS3BucketsPublicAccess"
    effect = "Deny"
    actions = [
        "s3:PutBucketPublicAccessBlock",
        "s3:DeletePublicAccessBlock"
      ]
    resources = [
      "arn:aws:s3:::blockpublicid", 
    ]
  }
}

resource "aws_organizations_policy" "deny_buckets_public_access" {
  #count      = var.create_policy == "true" ? 1 : 0
  name        = "Deny s3 Public Access"
  description = "Deny public S3 Access"

  content = data.aws_iam_policy_document.deny_buckets_public_access_doc.json
}

resource "aws_organizations_policy_attachment" "deny_buckets_public_access_attachment" {
 # policy_id = aws_organizations_policy.deny_unencrypted_uploads.id
 # count      = var.create_policy == "true" ? 1 : 0
  depends_on = [aws_organizations_policy.deny_buckets_public_access]
  policy_id = aws_organizations_policy.deny_buckets_public_access.id
  target_id = var.target_id
}
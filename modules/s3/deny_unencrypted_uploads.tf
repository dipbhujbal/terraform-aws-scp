#-----security_controls_scp/modules/s3/deny_unencrypted_uploads.tf----#

data "aws_iam_policy_document" "deny_unencrypted_uploads" {
  statement {
    sid = "DenyUnencryptedUploads"

    actions = [
      "s3:PutObject",
    ]

    resources = [
      "arn:aws:s3:::*/*",
    ]

    effect = "Deny"

    condition {
      test     = "Null"
      variable = "s3:x-amz-server-side-encryption"

      values = [
        "true",
      ]
    }
  }
}

locals {
    #cloudflare_record_somefield = one(cloudflare_record.record[*].some_field)
    id= one(aws_organizations_policy.deny_unencrypted_uploads[*].id)
}

resource "aws_organizations_policy" "deny_unencrypted_uploads" {
  #count      = var.create_policy == "true" ? 1 : 0
  name        = "Deny Unencrypted S3 Uploads"
  description = "Deny the ability to upload an unencrypted S3 Object."

  content = data.aws_iam_policy_document.deny_unencrypted_uploads.json
}

resource "aws_organizations_policy_attachment" "deny_unencrypted_uploads_attachment" {
 # policy_id = aws_organizations_policy.deny_unencrypted_uploads.id
  count      = var.create_policy == "true" ? 1 : 0
  depends_on = [aws_organizations_policy.deny_unencrypted_uploads]
  policy_id = aws_organizations_policy.deny_unencrypted_uploads.id
  target_id = var.target_id
}
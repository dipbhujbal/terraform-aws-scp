
#-----security_controls_scp/modules/ec2/deny_public_ec2_ip.tf----#

## Denies Users from launching EC2s with public IPs

data "aws_iam_policy_document" "limit_ec2_instance_types_document" {
  statement {
      sid    = "LimitEC2InstanceTypes"
      effect = "Deny"

      actions = [
        "ec2:RunInstances",
        "ec2:StartInstances"
      ]

      resources = ["*"]

      condition {
        test     = "StringNotEquals"
        variable = "ec2:InstanceType"
        values   = var.allowed_ec2_instance_types
      }
  }
}

resource "aws_organizations_policy" "limit_ec2_instance_type" {
  name        = "Limit EC2 instance types"
  description = "Limit EC2 instance types"

  content = data.aws_iam_policy_document.limit_ec2_instance_types_document.json
}

resource "aws_organizations_policy_attachment" "limit_ec2_instance_type_attachment" {
  policy_id = aws_organizations_policy.limit_ec2_instance_type.id
  target_id = var.target_id
}
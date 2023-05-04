<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.72 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.72 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_policy.deny_ec2_public_ip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy.limit_ec2_instance_type](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy_attachment.deny_ec2_public_ip_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |
| [aws_organizations_policy_attachment.limit_ec2_instance_type_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |
| [aws_iam_policy_document.deny_ec2_public_ip_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.limit_ec2_instance_types_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_ec2_instance_types"></a> [allowed\_ec2\_instance\_types](#input\_allowed\_ec2\_instance\_types) | List of Allowed EC2 instance types | `list(string)` | n/a | yes |
| <a name="input_target_id"></a> [target\_id](#input\_target\_id) | The Root ID, Organizational Unit ID, or AWS Account ID to apply SCPs. | `string` | n/a | yes |

## Outputs

No outputs.

## Details:


- **deny_public_ec2_ip.tf**:
   - Creates SCP that restrics targets users to create public ip for EC2 instances.

- **limit_ec2_instance_type.tf**:
   - Creates SCP to limit the ec2 instnace types to be created.
- **outputs.tf**: 

   - Contains output variables if any.

- **provider.tf**:
   -  Contains configuration about provider.

- **variables.tf**:
   - Contains details about input variables.
<!-- END_TF_DOCS -->
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
| [aws_organizations_policy.deny_buckets_public_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy.deny_unencrypted_uploads](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy.s3_region_lockdown_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy_attachment.deny_buckets_public_access_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |
| [aws_organizations_policy_attachment.deny_unencrypted_uploads_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |
| [aws_organizations_policy_attachment.s3_region_lockdown_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |
| [aws_iam_policy_document.deny_buckets_public_access_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.deny_unencrypted_uploads](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.s3_region_lockdown_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_policy"></a> [create\_policy](#input\_create\_policy) | Input create policy or not | `string` | n/a | yes |
| <a name="input_region_lockdown"></a> [region\_lockdown](#input\_region\_lockdown) | Region to give access | `string` | n/a | yes |
| <a name="input_target_id"></a> [target\_id](#input\_target\_id) | OU or Account id to attach SCP | `string` | n/a | yes |

## Outputs

No outputs.

## Details:

- **block_pulic_access.tf** :   
   
   - Contains resource which will create a SCP which will deny s3 Public Access block.
- **deny_unencrypted_uploads.tf** : 
   
   - Creates a SCP which will restrict to upload unencrypted uploads to S3.
- **outputs.tf**: 

   - Contains output variables if any.

- **provider.tf**:
   -  Contains configuration about provider.

- **region_lock.tf**:
   -  Created SCP that restrics to created resources other that the provided region.

- **variables.tf**:
   - Contains details about input variables.


    
 

<!-- END_TF_DOCS -->
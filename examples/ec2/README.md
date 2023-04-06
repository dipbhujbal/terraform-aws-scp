<!-- BEGIN_TF_DOCS -->
## Requirements

 Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.72 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.72 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ../../modules/ec2 | n/a |

## Resources under module

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
| <a name="input_target_id"></a> [target\_id](#input\_target\_id) | OU or Account id to attach SCP | `string` | n/a | yes |

## Outputs

No outputs.

## Usage

To Deploy all of the AWS SCPs for EC2 follow below steps:

```
# To get the plugins.
$ terraform init  

# To verify your resource planning
$ terraform plan -var-file=var.tfvars 

# To apply your SCPs
$ terraform apply -var-file=var.tfvars 
```
<!-- END_TF_DOCS -->
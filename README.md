<!-- BEGIN_TF_DOCS -->
# Cloudflare-validated ACM Certificate Terraform Module

## What does it do?

Creates an ACM certificate and returns the validated certificate details after completing ACM validation with Cloudflare

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.15, < 5.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >= 3.15, < 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.15, < 5.0 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | >= 3.15, < 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.validated_certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [cloudflare_record.dns_validation](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_zone_id"></a> [cloudflare\_zone\_id](#input\_cloudflare\_zone\_id) | The Cloudflare Zone ID to use for validating the ACM | `string` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain name for the certificate | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_validated_certificate"></a> [validated\_certificate](#output\_validated\_certificate) | The validated certificate |
<!-- END_TF_DOCS -->
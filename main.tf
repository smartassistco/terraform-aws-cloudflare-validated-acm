locals {
  root_domain = join(".", reverse(slice(reverse(split(".", var.domain_name)), 0, 2)))
}

# ACM
resource "aws_acm_certificate" "this" {
  domain_name       = var.domain_name
  validation_method = "DNS"
}

# Validation DNS Records
resource "cloudflare_record" "dns_validation" {
  zone_id = var.cloudflare_zone_id
  name    = replace(tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_name, ".${local.root_domain}.", "")
  value   = trimsuffix(tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_value, ".")
  type    = tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_type
}

# Validated certificate
resource "aws_acm_certificate_validation" "validated_certificate" {
  certificate_arn         = aws_acm_certificate.this.arn
  validation_record_fqdns = [
    tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_name
  ]
  depends_on = [cloudflare_record.dns_validation]
}

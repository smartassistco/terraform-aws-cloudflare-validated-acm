module "sample_domain_acm" {
  source = "smartassistco/cloudflare-validated-acm/aws"

  domain_name        = "sample.example.com"
  cloudflare_zone_id = "xxxxxxxxxxxxxxxxxx"
}

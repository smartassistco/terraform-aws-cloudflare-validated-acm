variable "domain_name" {
  description = "Domain name for the certificate"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "The Cloudflare Zone ID to use for validating the ACM"
  type        = string
}

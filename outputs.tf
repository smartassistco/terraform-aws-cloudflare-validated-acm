output "validated_certificate" {
  description = "The validated certificate"
  value       = aws_acm_certificate_validation.validated_certificate
}

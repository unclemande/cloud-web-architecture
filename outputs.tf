output "alb_dns_name" {
  value = aws_lb.app_lb.dns_name
}

output "cloudfront_url" {
  value = aws_cloudfront_distribution.cdn.domain_name
}
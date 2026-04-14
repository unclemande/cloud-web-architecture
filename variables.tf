variable "vpc_id" {
  description = "VPC ID where resources will be deployed"
  type        = string
}
variable "public_subnets" {
  description = "List of public subnet IDs"
  type        = list(string)
}
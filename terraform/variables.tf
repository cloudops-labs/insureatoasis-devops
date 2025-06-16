variable "region" {
  default = "ap-south-1"
}

variable "eks_role_arn" {
  description = "IAM role ARN for EKS"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

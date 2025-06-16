output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.demo.name
}

output "eks_cluster_endpoint" {
  description = "The endpoint to access the EKS cluster"
  value       = aws_eks_cluster.demo.endpoint
}

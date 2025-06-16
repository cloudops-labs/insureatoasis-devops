output "eks_cluster_name" {
  value = aws_eks_cluster.k8s_cluster.name
}

output "eks_endpoint" {
  value = aws_eks_cluster.k8s_cluster.endpoint
}

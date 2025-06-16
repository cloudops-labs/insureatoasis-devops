provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "demo-vpc"
  }
}

resource "aws_eks_cluster" "k8s_cluster" {
  name     = "demo-eks-cluster"
  role_arn = var.eks_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  depends_on = [aws_vpc.main]
}

output "cluster_endpoint" {
  value = aws_eks_cluster.k8s_cluster.endpoint
}

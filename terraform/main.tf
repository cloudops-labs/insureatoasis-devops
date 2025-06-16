provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "insureatoasis-vpc"
  }
}

resource "aws_eks_cluster" "demo" {
  name     = "insureatoasis-eks"
  role_arn = "arn:aws:iam::979285759387:role/eks-cluster-role"

  vpc_config {
    subnet_ids = [
      "subnet-12345678",
      "subnet-23456789"
    ]
  }

  depends_on = [aws_vpc.main]
}

output "cluster_endpoint" {
  value = aws_eks_cluster.demo.endpoint
}

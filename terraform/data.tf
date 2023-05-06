data "aws_eks_cluster" "default" {
  depends_on = [module.dataops-eks-cluster]
  name       = var.cluster_name
}

data "aws_eks_cluster_auth" "default" {
  depends_on = [module.dataops-eks-cluster]
  name       = var.cluster_name
}
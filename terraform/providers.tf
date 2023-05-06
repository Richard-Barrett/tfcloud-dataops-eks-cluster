terraform {
  cloud {
    organization = "scrapeit-dataops"

    workspaces {
      name = "dataops"
    }
  }
  required_providers {
    aws = ">= 3.52.0"
  }
}

provider "aws" {
  alias      = "us_west_2"
  region     = var.AWS_REGION
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

provider "kubernetes" {
  // depends_on = [module.dataops-eks-cluster]
  host                   = data.aws_eks_cluster.default.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.default.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.default.token
}
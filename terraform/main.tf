###########################
#       EKS CLUSTER       #
###########################
module "dataops-eks-cluster" {
  source                = "./modules/aws/eks"
  AWS_ACCESS_KEY        = var.AWS_ACCESS_KEY
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
}

###########################
#       HELM MODULES      #
###########################
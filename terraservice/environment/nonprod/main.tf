module "vpc" {
  source                 = "github.com/xxx/aws-network"
  vpc_name               = var.vpc_name
  cidr                   = var.cidr
  private_subnets        = var.private_subnets
  public_subnets         = var.public_subnets
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
  cluster_name           = var.cluster_name
  # subnet_group           = var.subnet_group
  # subnet_group_name      = var.subnet_group_name
  peer_vpc_id = var.peer_vpc_id
  peer_cidr   = var.peer_cidr
}

module "eks" {
  source                        = "github.com/xxx/aws-eks?ref=v12.2.1"
  cluster_name                  = var.cluster_name
  eks_cluster_version           = var.eks_cluster_version
  environment                   = var.environment
  private_subnets               = module.vpc.private_subnets
  vpc_id                        = module.vpc.vpc_id
  eks_roles                     = var.eks_roles
  eks_users                     = var.eks_users
  worker_groups_launch_template = var.worker_groups_launch_template
}

# module "cloudfront" {
#   
# }

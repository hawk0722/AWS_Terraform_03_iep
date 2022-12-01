module "network" {
  source = "../../modules/network"

  region     = var.region
  project    = var.project
  env        = var.env
  cidr_block = var.cidr_block

}

module "instance" {
  source = "../../modules/instance"

  project = var.project
  env     = var.env

  private_subnet_1c_id = module.network.private_subnet_1c_id
  profile_name         = module.iam.profile_name

}

module "iam" {
  source = "../../modules/iam"

  project = var.project
  env     = var.env

}

module "iep" {
  source = "../../modules/iep"

  project = var.project
  env     = var.env
  iep     = var.iep
  region  = var.region

  vpc_id              = module.network.vpc_id
  sg_iep_id           = module.network.sg_iep_id
  public_subnet_1c_id = module.network.public_subnet_1c_id

}

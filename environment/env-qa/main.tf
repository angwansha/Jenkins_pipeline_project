module "networking" {
    source = "../../modules/networking"
    region = var.region
    profile = var.profile
    environment = var.environment
    project = var.project
    managedby = var.managedby
    owner = var.owner
    administrator = var.administrator
    jp_vpc_cidr = var.jp_vpc_cidr
    pub_sn_1a_cidr = var.pub_sn_1a_cidr
    pub_sn_1b_cidr = var.pub_sn_1b_cidr
    priv_app_sn_1a_cidr = var.priv_app_sn_1a_cidr
    priv_app_sn_1b_cidr = var.priv_app_sn_1b_cidr
    priv_db_sn_1a_cidr = var.priv_db_sn_1a_cidr
    priv_db_sn_1b_cidr = var.priv_db_sn_1b_cidr
  
}
#provider
variable "region" {}
variable "profile" {}
# locals
variable "environment" {}
variable "project" {}
variable "managedby" {}
variable "owner" {}
variable "administrator" {}
# networking
variable "jp_vpc_cidr" {}
# public subnets
variable "pub_sn_1a_cidr" {}
variable "pub_sn_1b_cidr" {}
# private app subnets
variable "priv_app_sn_1a_cidr" {}
variable "priv_app_sn_1b_cidr" {}
# private db subnets
variable "priv_db_sn_1a_cidr" {}
variable "priv_db_sn_1b_cidr" {}
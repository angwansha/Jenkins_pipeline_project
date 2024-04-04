#vpc id
output "jp_vpc_qa_id" {
  value = module.networking.jp_vpc_id
}
# internet gateway id
output "jp_igw_qa_id" {
  value = module.networking.jp_igw_id

}

# pub subnet 1a id
output "pub_sn_1a_qa_id" {
  value = module.networking.pub_sn_1a_id
}
# pub subnet 1b id
output "pub_sn_1b_qa_id" {
  value = module.networking.pub_sn_1b_id
}
# priv app subnet 1a id
output "priv_app_sn_1a_qa_id" {
  value = module.networking.priv_app_sn_1a_id
}
# priv app subnet 1b id
output "priv_app_sn_1b_qa_id" {
  value = module.networking.priv_app_sn_1b_id
}
# priv db subnet 1a id
output "priv_db_sn_1a_qa_id" {
  value = module.networking.priv_db_sn_1a_id
}
# priv db subnet 1b id
output "priv_db_sn_1b_qa_id" {
  value = module.networking.priv_db_sn_1b_id
}
# public route table id
output "pub_rt_qa_id" {
  value = module.networking.pub_rt_id
}
# private route table 1a id
output "priv_app_rt_1a_qa_id" {
  value = module.networking.priv_app_rt_1a_id
}
# private route table 1b id
output "priv_app_rt_1b_qa_id" {
  value = module.networking.priv_app_rt_1b_id
}
# nat gateway 1a id
output "ngw_1a_qa_id" {
  value = module.networking.ngw_1a_id
}
# nat gateway 1b id
output "ngw_1b_qa_id" {
  value = module.networking.ngw_1b_id
} 
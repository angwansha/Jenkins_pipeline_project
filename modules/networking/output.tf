#vpc id
output "jp_vpc_id" {
  value = aws_vpc.jp_vpc.id
}
# internet gateway id
output "jp_igw_id" {
  value = aws_internet_gateway.jp_igw.id

}
# pub subnet 1a id
output "pub_sn_1a_id" {
  value = aws_subnet.pub_sn_1a.id
}
# pub subnet 1b id
output "pub_sn_1b_id" {
  value = aws_subnet.pub_sn_1b.id
}
# priv app subnet 1a id
output "priv_app_sn_1a_id" {
  value = aws_subnet.priv_app_sn_1a.id
}
# priv app subnet 1b id
output "priv_app_sn_1b_id" {
  value = aws_subnet.priv_app_sn_1b.id
}
# priv db subnet 1a id
output "priv_db_sn_1a_id" {
  value = aws_subnet.priv_db_sn_1a.id
}
# priv db subnet 1b id
output "priv_db_sn_1b_id" {
  value = aws_subnet.priv_db_sn_1b.id
}
# public route table id
output "pub_rt_id" {
  value = aws_route_table.pub_rt.id
}
# private route table 1a id
output "priv_app_rt_1a_id" {
  value = aws_route_table.priv_app_rt_1a.id
}
# private route table 1b id
output "priv_app_rt_1b_id" {
  value = aws_route_table.priv_app_rt_1b.id
}
# nat gateway 1a id
output "ngw_1a_id" {
  value = aws_nat_gateway.ngw_1a.id
}
# nat gateway 1b id
output "ngw_1b_id" {
  value = aws_nat_gateway.ngw_1b.id
} 
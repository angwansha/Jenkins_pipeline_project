#### eip for nat gateway 1a#####
resource "aws_eip" "eip_1a" {
  #instance = aws_instance.web.id
  domain = "vpc"
  tags = merge(local.common_tags,
    {
      "Name" = "${var.owner}-${var.environment}-eip_1a"
    }
  )

}

#### eip for nat gateway 1b
resource "aws_eip" "eip_1b" {
  #instance = aws_instance.web.id
  domain = "vpc"
  tags = merge(local.common_tags,
    {
      "Name" = "${var.owner}-${var.environment}-eip_1b"
    }
  )

}

#####create nat gateway 1a
resource "aws_nat_gateway" "ngw_1a" {
  allocation_id = aws_eip.eip_1a.id
  subnet_id     = aws_subnet.pub_sn_1a.id
  tags = merge(local.common_tags,
    {
      "Name" = "${var.owner}-${var.environment}-ngw_1a"
    }
  )

}

#######create nat gateway 1b
resource "aws_nat_gateway" "ngw_1b" {
  allocation_id = aws_eip.eip_1b.id
  subnet_id     = aws_subnet.pub_sn_1b.id
  tags = merge(local.common_tags,
    {
      "Name" = "${var.owner}-${var.environment}-ngw_1b"
    }
  )

}






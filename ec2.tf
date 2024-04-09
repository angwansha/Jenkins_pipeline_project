locals {
  ## common tags to be assigned to all resources####
  common_tags = {
    environment   = var.environment
    project       = var.project
    managedby     = var.managedby
    owner         = var.owner
    administrator = var.administrator

  }

}

data "aws_subnet" "pub_sn_1a_cidr" {
    filter {
        name = "tag:Name"
        values = ["${var.owner}-${var.environment}-pub_sn_1a"]
      
    }
  
}

resource "aws_instance" "jp_ec2" {
    ami = var.ami
    instance_type = var.instance_type
    associate_public_ip_address = "true"
    key_name = var.key_name
    subnet_id = data.aws_subnet.pub_sn_1a_cidr.id
    vpc_security_group_ids = [aws_security_group.jp_sg.id]
    for_each = toset(["jenkins-master","maven","ansible"])
    tags = merge(local.common_tags,
    {
      "Name" = "${var.owner}-${var.environment}-${each.key}"
    }
  )

}
  

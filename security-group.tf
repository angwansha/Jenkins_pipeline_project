
######### getting vpc id ############
data "aws_vpc" "jp_vpc" {
    filter {
        name = "tag:Name"
        values = ["${var.owner}-${var.environment}-jp_vpc"]
      
    }
  
}

###### creating the security group rules ###########
resource "aws_security_group" "jp_sg" {
    name = "jp_sg"
    description = "all access to ssh and jenkins"
    vpc_id = data.aws_vpc.jp_vpc.id

    ingress  {
        description = "ssh access"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}

    ingress {
        description = "jenkins access"
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

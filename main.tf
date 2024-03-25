resource "aws_security_group" "security_group" {
	name = var.sg_name
	vpc_id = var.vpc_id
	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
	tags = {
		Name = var.sg_tag_name
	}
}

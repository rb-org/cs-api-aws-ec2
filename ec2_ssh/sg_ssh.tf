resource "aws_security_group" "ssh" {
  name        = "${local.sg_ssh_name}"
  description = "SSH Bastion access"
  vpc_id      = "${var.vpc_id}"

  tags = "${merge(var.default_tags, map(
      "Name", "${local.sg_ssh_name}"
    ))}"
}

##########
# Ingress
##########
resource "aws_security_group_rule" "ir_base_ssh_t" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  self              = true
  security_group_id = "${aws_security_group.ssh.id}"
}

#########
# Egress
#########
resource "aws_security_group_rule" "er_base_ssh" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.ssh.id}"
}

# Tux SG

resource "aws_security_group_rule" "ir_base_tux_ssh_t" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  source_security_group_id = "${aws_security_group.ssh.id}"
  description              = "Allow SSH from bastion"
  security_group_id        = "${var.tux_sg_id}"
}

# resource "aws_security_group_rule" "ir_ssh_cs_api_t" {
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   source_security_group_id = "${var.sg_ssh_id}"
#   description              = "Allow SSH from bastion"
#   security_group_id        = "${aws_security_group.cs_api.id}"
# }


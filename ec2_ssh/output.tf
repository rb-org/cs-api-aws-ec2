output "sg_id" {
  value = "${aws_security_group.ssh.id}"
}

output "sg_name" {
  value = "${aws_security_group.ssh.name}"
}

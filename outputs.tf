# Security Groups

output "ssh_sg_id" {
  value = "${module.ec2_ssh.sg_id}"
}

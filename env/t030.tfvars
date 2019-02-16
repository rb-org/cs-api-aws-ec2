key_name = "d020-euw"

vpc_cidr = "10.30.0.0/16"

enable_cw_metrics = {
  ssh = true
}

enable_monitoring = {
  ssh = true
}

enable_cw_alarm_cpu = {
  ssh = true
}

enable_cw_alarm_disk_tux = {
  ssh = true
}

disable_api_term = {
  ssh = false
}

ebs_optimized = {
  ssh = "false"
}

instance_type = {
  ssh = "t3.medium"
}

instance_count = {
  ssh = 1
}

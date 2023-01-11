output "instance_ip_addr" {
  value = module.my_instance_module.instance_ip_addr
  description = "The public IP address of the main instance."
}

output "vpc_ip_addr" {
  value = module.my_instance_module.instance_ip_addr
  description = "The public IP address of the main instance."
}
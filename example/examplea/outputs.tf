output "ip" {
  value       = module.data.ip
  description = "Outputs your IP address"
}

output "cidr" {
  value       = "${module.data.ip}/32"
  description = "Outputs your IP address as a CIDR"
}

output "ip" {
  value = module.data.ip
}

output "cidr" {
  value = "${module.data.ip}/32"
}

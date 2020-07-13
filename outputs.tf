output "ip" {
  description = "Your IP"
  value       = chomp(data.http.ip.body)
}

output "cidr" {
  value = "${chomp(data.http.ip.body)}/32"
}

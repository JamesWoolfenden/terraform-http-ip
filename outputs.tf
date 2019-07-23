output "ip" {
  description = "Your IP"
  value       = chomp(data.http.ip.body)
}

output "ip" {
  value = chomp(data.http.ip.body)
}

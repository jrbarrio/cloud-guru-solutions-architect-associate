output "alb_dns_name" {
  value = module.webserver-cluster.alb_dns_name
  description = "The domain name of the load balancer"
}

output "address" {
  value       = module.mysql.address
  description = "Connect to the database at this endpoint"
}

output "port" {
  value       = module.mysql.port
  description = "The port the database is listening on"
}

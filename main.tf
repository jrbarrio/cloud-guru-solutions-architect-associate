module "app" {
  source = "./app/services/webserver-cluster"

  server_port = var.server_port
}

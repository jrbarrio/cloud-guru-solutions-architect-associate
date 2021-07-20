module "webserver-cluster" {
  source = "./app/services/webserver-cluster"

  server_port = var.server_port
}

module "mysql" {
  source = "./app/data-stores/mysql"
}

resource "aws_instance" "foo" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t1.2xlarge" # invalid type!
}

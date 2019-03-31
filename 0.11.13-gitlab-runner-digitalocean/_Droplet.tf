variable "DO_TOKEN" {}
variable "NAME_DROPLET" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
    token = "${var.DO_TOKEN}"
}

# Create droplet
resource "digitalocean_droplet" "runner" {
  image     = "docker-18-04"
  name      = "${var.NAME_DROPLET}-1"
  region    = "sfo2"
  size      = "s-1vcpu-3gb"
  user_data = "${file("user_data.yml")}"
}
variable "do_token" {}
variable "public_key" {}

provider "digitalocean" {
  token="${var.do_token}"
}

resource "digitalocean_ssh_key" "default" {
  name = "tf-key"
  public_key = "${file("${var.public_key}")}"
}

resource "digitalocean_droplet" "test-server" {
  name="test-server"
  region="ams2"
  size="512mb"
  image="debian-8-x64"
  ssh_keys= ["${digitalocean_ssh_key.default.fingerprint}"]
  private_networking=true

}

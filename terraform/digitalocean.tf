variable "do_token" {}
variable "public_key" {}

provider "digitalocean" {
  token="${var.do_token}"
}

resource "digitalocean_ssh_key" "default" {
  name = "mahnve-demo-tf-key"
  public_key = "${file("${var.public_key}")}"
}

resource "digitalocean_droplet" "test_server" {
  name="mahnve-demo-test-server"
  region="ams2"
  size="512mb"
  image="29364322"
  ssh_keys= ["${digitalocean_ssh_key.default.fingerprint}"]
  private_networking=true

}

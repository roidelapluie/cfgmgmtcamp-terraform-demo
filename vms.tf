resource "digitalocean_droplet" "cfgmgmtcamp" {
  count    = "${var.do_count}"
  name     = "${format("cfgmgmtcamp%02d", count.index + 1)}"
  image    = "centos-7-x64"
  ssh_keys = ["${var.do_ssh_key}"]
  region   = "${var.do_datacenter}"
  size     = "512mb"
}

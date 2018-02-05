resource "digitalocean_record" "cfgmgmtcamp" {
  count  = "${var.do_count}"
  domain = "${digitalocean_domain.default.name}"
  type   = "A"
  name   = "${element(digitalocean_droplet.cfgmgmtcamp.*.name, count.index)}"
  value  = "${element(digitalocean_droplet.cfgmgmtcamp.*.ipv4_address, count.index)}"
}

resource "digitalocean_domain" "default" {
  name       = "${var.do_domain}"
  ip_address = "${digitalocean_droplet.cfgmgmtcamp.0.ipv4_address}"
}

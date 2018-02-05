output "addresses" {
  value = "${zipmap(digitalocean_droplet.cfgmgmtcamp.*.name, digitalocean_droplet.cfgmgmtcamp.*.ipv4_address)}"
}

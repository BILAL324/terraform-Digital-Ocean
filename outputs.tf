output "droplet-ip-public" {
    value = digitalocean_droplet.backend-101.ipv4_address
  
}


output "droplet-id" {
    value = digitalocean_droplet.backend-101.id
  
}

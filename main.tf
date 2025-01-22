terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.27"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "backend-101" {
  image       = var.drop-img
  name        = "backend-101"
  region      = var.region
  size        = var.drop-size
  tags        = ["web", "terraform"]
  ssh_keys    = [var.ssh_key]
}

resource "digitalocean_firewall" "backend-firewall" {
  name        = "backend-firewall"
  droplet_ids = [digitalocean_droplet.backend-101.id]

  inbound_rule {
    protocol          = "tcp"
    port_range        = "22"
    source_addresses  = ["0.0.0.0/0"]
  }

  inbound_rule {
    protocol          = "tcp"
    port_range        = "80"
    source_addresses  = ["0.0.0.0/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "all"
    destination_addresses = ["0.0.0.0/0"]
  }
}


# resource "digitalocean_loadbalancer" "backend-loadbalancer-101" {
#     name =" backend-loadbalancer-101"
#     region = var.region

#     forwarding_rule {
#       entry_port = 80
#       entry_protocol = "http"
#       target_port = 443
#       target_protocol = "https"
#     }


#     forwarding_rule {
#       entry_port = 443
#       entry_protocol = "https"
#       target_port = 443
#       target_protocol = "https"
#     }

#     healthcheck {
#       protocol = "http"
#       port = 80
#       path = "/"
#       check_interval_seconds = 10
#       response_timeout_seconds = 5
#       healthy_threshold = 3
#       unhealthy_threshold = 3
#     }
  
# droplet_ids = [ digitalocean_droplet.backend-101.id ]





#  sticky_sessions {
#     type = "none"
#   }
# }
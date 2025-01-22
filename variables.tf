variable "do_token" {
  description = "Digital Ocean Token "
  type = string
  sensitive = true
}

variable "ssh_key" {
  description = "Bilal SSH Key public"
  type = string
  sensitive = true
}




variable "drop-img" {
  description = " droplet Image (ubuntu , windows etc) "
  default = "ubuntu-22-04-x64"
}




variable "drop-size" {
  description = " droplet machine configuration and  size "
  default = "s-1vcpu-1gb"
}


variable "region" {
  description = "region of droplet"
  default = "nyc3"
}

variable "droplet_name" {
  default = "terra-practice-droplet"
}


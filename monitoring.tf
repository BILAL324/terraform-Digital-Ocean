# monitoring.tf


resource "digitalocean_monitor_alert" "cpu_alert" {
 alerts {
    email = ["muhammad.bilal@barq.dev"]
    # slack {
    #   channel = "Production Alerts"
    #   url     = "https://hooks.slack.com/services/T1234567/AAAAAAAA/ZZZZZZ"
    # }
  }

  window      = "5m"
  type        = "v1/insights/droplet/cpu"
  compare     = "GreaterThan"
  value       = 80
  enabled     = true
  entities    = [digitalocean_droplet.backend-101.id]
  description = "Alert about CPU usage"


}




















#one time define that
# resource "digitalocean_monitoring" "backend-monitoring-101" {
#   droplet_id = digitalocean_droplet.backend-101.id
# }





# resource "digitalocean_alert_policy" "cpu_alert" {
#   name       = "cpu usage alert "
#   type       = "cpu"
#   resource   = "droplet"
#   comparison = ">"
#   threshold  = 80
#   duration  = 60

#   notification {
#     channel       = "email"
#     contact_email = "muhammad.bilal@barq.dev" # Replace with your email
#   }

#   droplet_ids = [digitalocean_droplet.backend-101.id]

# }



# resource "digitalocean_alert_policy" "memory_alert" {
#     name = "memory usage alert "
#     type = "memory"
#     resource = " droplet"
#     comparison = ">"
#     threshold = 80
#     duration = 60

#     notification{

#         channel = "email"
#         contact_email = "muhammad.bilal@barq.dev"
#     }
    
  
#   droplet_ids =[digitalocean_droplet.backend-101.id] 
# }














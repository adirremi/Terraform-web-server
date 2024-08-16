output "instance_name" {
  value = google_compute_instance.web_server.name
}

output "instance_ip" {
  value = google_compute_instance.web_server.network_interface[0].access_config[0].nat_ip
}

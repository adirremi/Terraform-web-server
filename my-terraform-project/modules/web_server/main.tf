resource "google_compute_instance" "web_server" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts"
    }
  }

  
  network_interface {
    network = var.network_name
    access_config {
      // Include this section to give the instance a public IP
    }
  }

  metadata_startup_script = file("install.sh")
  tags = ["http-server", "https-server"]
}

resource "google_compute_firewall" "default" {
  name    = "allow-http-https"
  network = var.network_name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
source_ranges = ["0.0.0.0/0"]  # מאפשר גישה מכל הכתובות
 }

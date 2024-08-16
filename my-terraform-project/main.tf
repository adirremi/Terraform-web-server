provider "google" {
  credentials = file("/Users/adirremi/my-terraform-project/gcp-key.json")
  project = var.project_id
  region  = var.region
}

module "web_server" {
  source        = "./modules/web_server"
  project_id    = var.project_id
  zone          = var.zone
  network_name  = var.network_name
  instance_name = var.instance_name
  machine_type  = var.machine_type
}

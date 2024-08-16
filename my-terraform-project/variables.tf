variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone"
  default     = "us-central1-c"
}

variable "network_name" {
  description = "The name of the network"
  default     = "default"
}

variable "instance_name" {
  description = "The name of the instance"
  default     = "tf-gcp-web-server"
}

variable "machine_type" {
  description = "The type of machine to create"
  default     = "e2-micro"
}

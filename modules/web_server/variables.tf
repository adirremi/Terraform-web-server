variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "zone" {
  description = "The zone to deploy the VM"
  type        = string
}

variable "instance_name" {
  description = "The name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "The type of the VM instance"
  type        = string
}

variable "network_name" {
  description = "The network to attach the VM"
  type        = string
}

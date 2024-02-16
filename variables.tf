variable "project" {
  description = "The project ID to host the cluster in"
  type        = string
  default     = "Devopsthunder_gke_project"
}

variable "name" {
  description = "name of the kubernetes cluster"
  type        = string
  default     = "DevopsThunder_cluster"
}

variable "region" {
  description = "The project ID to host the cluster in"
  type        = string
  default     = "us-central1-a"
}


variable "location" {
  description = "location for k8s cluster"
  type        = string
  default     = "us-central1-a"
}

variable "nodecount" {
  description = "number of nodes"
  type        = number
  default     = 1
}

variable "nodetype" {
  description = "type of nodes"
  type        = string
  default     = "e2-medium"
}


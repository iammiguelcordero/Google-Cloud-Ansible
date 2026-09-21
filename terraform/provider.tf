provider "google" {
  project = var.project_config.name
  region = var.project_config.region
}
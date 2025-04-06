provider "google" {
  project = var.project_id
  region  = var.region
}

module "gke" {
  source     = "terraform-google-modules/kubernetes-engine/google"
  project_id = var.project_id
  name       = "shlomit-sarel-cluster"
  region     = var.region
  network    = "default"
  subnetwork = "default"

  ip_range_pods         = "10.2.0.0/16"
  ip_range_services     = "10.3.0.0/20"
  kubernetes_version    = "latest"
  release_channel       = "STABLE"
  enable_autopilot      = true
}
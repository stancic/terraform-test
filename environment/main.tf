module "vpc" {
  source   = "../modules/vpc"
  vpc_name = "terraform-vpc"

  project_id = var.project_id
  region     = var.region
}

module "firebase" {
  source = "../modules/firebase"

  project_id = var.project_id

  providers = {
    google-beta = google-beta
  }
}

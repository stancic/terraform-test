resource "google_project" "this" {
  provider = google-beta

  name       = var.project_id
  project_id = var.project_id
}

resource "google_firebase_project" "this" {
  provider = google-beta
  project  = google_project.this.project_id
}

resource "google_firebase_web_app" "this" {
  provider        = google-beta
  project         = google_project.this.project_id
  display_name    = "Terraform Test"
  deletion_policy = "DELETE"

  depends_on = [google_firebase_project.this]
}

terraform {
  backend "remote" {
    organization = "prototyp-dev"

    workspaces {
      name = "firebase-infra-test-dino"
    }
  }
}

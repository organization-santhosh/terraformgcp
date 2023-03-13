terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.36.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "stable-inn-369612"
  region  = "europe-west1"
  zone    = "europe-west1-a"

}

provider "google" {
  credentials = "${file("/Users/aelizond/.config/gcloud/google-interview-creds.json")}"
  project = "numeric-camp-205505"
  region = "us-central1"
}

resource "google_sql_database_instance" "us" {
  name = "autocomplete-us"
  database_version = "POSTGRES_9_6"
  region = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_compute_instance" "app" {
  name = "autocomplete-us-app"
  machine_type = "n1-standard-1"
  zone = "us-central1-a"

  tags = ["google-interview","autocomplete"]

  boot_disk {
    initialized_params {
      image = "debian-cloud/debian-8"
    }
  }

  scratch_disk {
  }

  network_interface {
    network = "default"
    access_config {
    }
  }


}

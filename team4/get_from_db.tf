provider "google" {
  project = "{{jupyter2}}"
  region = "europe-west1"
  zone = "europe-west1-b"
}

resource "google_cloudfunctions_function" "function" {
  name = "function-4"
  description = "My function"
  available_memory_mb = 128
  trigger_http = true
  timeout = 60
  entry_point = "get_from_db"
  runtime = "python37"
  environment_variables = {
    CRED = "mongodb://main_admin:abc123@35.241.132.65/mysinoptik"
  }
}

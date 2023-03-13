resource "google_service_account" "myaccount" {
  account_id   = "myaccount"
  display_name = "My Service Account"
}

resource "google_service_account_key" "mykey" {
  service_account_id = google_service_account.myaccount.name
}

resource "google_storage_bucket_object" "key" {
  name   = "my-service-account-key.json"
  bucket = "azuresanthu"
  source = google_service_account_key.mykey.private_key
}

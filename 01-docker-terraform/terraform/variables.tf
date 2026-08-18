variable "credentials" {
    description = "My Credentials"
    default = "./keys/my_creds.json"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "region" {
  description = "Project Region"
  default     = "us-central1"
}

variable "project" {
  description = "Project Name"
  default     = "de-zoomcamp-terraform-505808"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "de-zoomcamp-terraform-505808-terra-bucket"
}
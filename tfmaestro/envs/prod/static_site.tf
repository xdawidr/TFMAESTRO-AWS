module "bucket_with_image" {
  source = "../../modules/bucket/"

  bucket_name      = "tfmaestro-maintenance-page-image"
  region           = "us-east-1"
  force_destroy    = true
  versioning       = true
  main_page_suffix = null
  not_found_page   = null
}

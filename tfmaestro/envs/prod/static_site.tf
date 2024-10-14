module "bucket" {
  source = "../../modules/bucket/"

  bucket_name      = "tfmaestro-maintenance-page"
  region           = "us-east-1"
  force_destroy    = true
  versioning       = true
  main_page_suffix = "index.html"
  not_found_page   = "404.html"
}

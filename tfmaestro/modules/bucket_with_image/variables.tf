variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "region" {
  description = "The AWS region where the S3 bucket will be created"
  type        = string
  default     = "us-east-1"
}

variable "force_destroy" {
  description = "Whether to force destroy the S3 bucket"
  type        = bool
  default     = true
}

variable "versioning" {
  description = "Whether to enable versioning for the S3 bucket"
  type        = bool
  default     = true
}

variable "main_page_suffix" {
  description = "The suffix for the main page of the website"
  type        = string
  # default     = "index.html"
}

variable "not_found_page" {
  description = "The name of the 404 not found page"
  type        = string
  # default     = "404.html"
}


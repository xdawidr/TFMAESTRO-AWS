module "vpc" {
  source      = "../../modules/vpc"
  name        = "dev"
  description = "Development environment VPC"
  cidr_block  = "10.0.0.0/16"

  subnets = {
    "dev-subnet-01" = {
      cidr                    = "10.0.3.0/24"
      availability_zone       = "eu-central-1a"
      map_public_ip_on_launch = false
    },
    "dev-subnet-02" = {
      cidr                    = "10.0.4.0/24"
      availability_zone       = "eu-central-1b"
      map_public_ip_on_launch = false
    }
  }
}
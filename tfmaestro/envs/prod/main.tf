module "vpc" {
  source      = "../../modules/vpc"
  name        = "prod"
  description = "Production environment VPC"
  cidr_block  = "10.0.0.0/16"

  subnets = {
    "prod-subnet-01" = {
      cidr                    = "10.0.1.0/24"
      availability_zone       = "us-east-1a"
      map_public_ip_on_launch = false
    },
    "prod-subnet-02" = {
      cidr                    = "10.0.2.0/24"
      availability_zone       = "us-east-1b"
      map_public_ip_on_launch = false
    }
  }
}

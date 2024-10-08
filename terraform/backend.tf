# terraform {
#   backend "s3" {
#     bucket         = "francis-dev-terraform-bucket"
#     key            = "global/s3/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }

terraform {
  backend "remote" {
    organization = "fnc-project-19"

    workspaces {
      name = "terraform-cloud"
    }
  }
}

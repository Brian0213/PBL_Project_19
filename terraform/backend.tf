# terraform {
#   backend "s3" {
#     bucket         = "19@pBl"
#     key            = "global/s3/terraform.tfstate"
#     region         = "eu-west-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }

terraform {
  backend "remote" {
    organization = "Ajtoy"

    workspaces {
      name = "PBL_Project_19"
    }
  }
}
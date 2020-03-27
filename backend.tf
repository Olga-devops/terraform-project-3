terraform {
backend "s3" {
bucket = "terraform-project-backend-2020-3team"
key = "tower/us-east-1/state/dev/new-best-tower-team1.tfstate"
region = "us-east-1"
  }
}

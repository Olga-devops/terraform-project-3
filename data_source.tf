data  "terraform_remote_state" "dev" {
    backend = "s3"
    config = {
    bucket = "terraform-project-backend-2020"
    key = "tower/us-east-1/tools/virginia/new-best-tower-team1.tfstate"
    region = "us-east-1"
    }
}


output "VPC_ID" {
value = "${data.terraform_remote_state.dev.outputs.VPC_ID}"
}


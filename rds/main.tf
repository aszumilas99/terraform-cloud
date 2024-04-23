data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "aszumilas99"
    workspaces = {
      name = "vpc"
    }
  }
}

output all {
    value = data.terraform_remote_state.vpc.outputs
}

resource "aws_db_subnet_group" "default" {
  name       = "terraform-cloud"
  subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnets
}
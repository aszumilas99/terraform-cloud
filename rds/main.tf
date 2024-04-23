data "tfe_outputs" "vpc" {
  config = {
    organization = "aszumilas99"
    workspaces = {
      name = "vpc"
    }
  }
}

output all {
    value = data.tfe_outputs.vpc.outputs
}

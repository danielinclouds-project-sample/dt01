
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
    }
  }
}

provider "github" {}


# data "github_repository" "repo" {
#   full_name = "danielinclouds-project-sample/dt01"
# }

resource "github_repository_environment" "repo_environment" {
#   repository       = data.github_repository.repo.name
  repository       = "dt01"
  environment      = "production"
}

resource "github_actions_variable" "example_variable" {
#   repository       = data.github_repository.repo.name
  repository       = "dt01"
  variable_name    = "example_variable_name"
  value            = "example_variable_value"
}


terraform {
    required_providers {
      github = {
        source  = "integrations/github"
        version = "~> 5.0"
      }
    }
}

provider "github" {
  token = "tokenhere"
}

resource "github_repository" "terraform" {
    name = "terraform"
    description = "created by terraform"
    visibility = "public" 
}
terraform {
  required_providers {
    vercel = {
      source = "vercel/vercel"
      version = "~> 0.6"
    }
  }
}

resource "vercel_project" "wellsjp" {
  name      = "wellsjp"
  framework = "nextjs"
  git_repository = {
    type = "github"
    repo = "jacopen/wells.jp"
  }
}
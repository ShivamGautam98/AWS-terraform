terraform {
  backend "remote" {
    organization = "shivam98"

    workspaces {
      name = "shivam98"
    }
  }
}
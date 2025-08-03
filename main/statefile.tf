terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Enterprise-Cloud-01"

    workspaces {
      name = "springapp_terraform"
    }
  }
}

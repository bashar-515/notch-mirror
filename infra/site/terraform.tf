terraform {
  required_version = ">= 1.10.7"

  required_providers {
    render = {
      source  = "render-oss/render"
      version = "1.8.0"
    }
  }

  cloud {
    organization = "notch-ink"
    hostname = "app.terraform.io"

    workspaces {
      name = "production"
    }
  }
}

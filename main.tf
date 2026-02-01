resource "random_id" "this" {
  byte_length = 6
}

module "repositories" {
  source  = "app.terraform.io/benoitblais-hashicorp/repositories/github"
  version = "0.0.2"

  name        = "${var.repository_name}${random_id.this.id}"
  description = var.repository_description
}

resource "random_id" "this" {
  byte_length = 6
}

module "repositories" {
  source  = "app.terraform.io/benoitblais-hashicorp/repositories/github"
  version = "0.0.1"
  
  name        = "module-lifecycle-demo-${random_id.this.id}"
  description = "Repository created to demonstrate module lifecycle in Terraform"
}
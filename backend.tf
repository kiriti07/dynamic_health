terraform {
  backend "local" {
    path = "state/backend.tfstate"
  }
}

terraform {
  backend "s3" {
    bucket         = "dynamic-health"
    key            = "backend.tfstate"
    region         = "us-east-1"
    encrypt        = true         # Recommended to encrypt the state file
  }
}

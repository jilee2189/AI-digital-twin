terraform {
  backend "s3" {
    bucket               = "twin-terraform-state-047746234475"  # your bucket
    region               = "us-west-1"                          # MATCH the bucket region
    key                  = "terraform.tfstate"                   # base key per workspace
    workspace_key_prefix = "env"                                 # no colon!
    encrypt              = true

    # New style locking (Terraform >=1.10)
    use_lockfile = true

    # If you still want DynamoDB locking, you can keep this and ignore the deprecation warning:
    # dynamodb_table = "twin-terraform-locks"
  }
}
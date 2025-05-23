terraform {
    backend "s3" {
        bucket = "fromterraform_statestore_damsri"
        key = "./terraform.tfstate"
        region = "us-east-1"
        encrypt = true
        use_lockfile = true
    }
}

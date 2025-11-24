terraform {
  backend "s3" {
    bucket = "your-bucket-name"
    key    = "path/to/your/terraform.tfstate"
    region = "us-east-1" # S3 backend requires a region, even if arbitrary
    endpoint = "http://<ceph-rgw-hostname-or-ip>:<port>"
    access_key = "your-access-key"
    secret_key = "your-secret-key"

    # Required for self-hosted S3 compatible storage like Ceph RGW
    skip_credentials_validation = true
    force_path_style            = true
    # Optionally, you can set "insecure = true" if you are not using HTTPS
  }
}

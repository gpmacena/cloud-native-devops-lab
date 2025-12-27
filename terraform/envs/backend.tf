terraform {
  backend "s3" {
    bucket = "projeto1-terraform-bucket"
    key    = "cloud-native-devops-lab/dev/terraform.tfstate"
    region = "sa-east-1"
  }
}

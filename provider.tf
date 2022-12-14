terraform{
    requried_provider {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.5.0"
        }
    } 
}

provider "aws"{
    region = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}
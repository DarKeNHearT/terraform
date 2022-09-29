resource "aws_s3_bucket" "Jenkins"{
    bucket = "my-tf-massiveprice-bucket"
    acl = "private"

    tags{
        Name = "My bucket"
        Environment = "Dev"
    }
}
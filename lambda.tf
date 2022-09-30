locals {
    lambda-zip-location = "outputs/functionbasic.zip"
}

data "archive_file" "init" {
  type        = "zip"
  source_file = "ecommerce-restaurant.jar"
  output_path = local.lambda-zip-location
}

resource "aws_lambda_function" "test_lambda" {
  filename      = local.lambda-zip-location
  function_name = "SpringBootLambdaHandler"
  role          = aws_iam_role.lambda_role.arn
  handler       = "SpringBootLambdaHandler.apply"

  source_code_hash = filebase64sha256("lambda_function_payload.zip")

  runtime = "java11"
}
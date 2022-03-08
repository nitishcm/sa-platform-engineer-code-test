## Main Terraform module code goes here
resource "aws_dynamodb_table" "dynamo_db" {
  hash_key = var.hash_key.name
  name     = var.dynamodb_table_name
  attribute {
    name = var.hash_key.name
    type = var.hash_key.type
  }
  write_capacity = var.dynamodb_wcu
  read_capacity  = var.dynamodb_rcu
}
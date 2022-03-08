output "dynamodb_arn" {
  value       = aws_dynamodb_table.dynamo_db.arn
  description = "Dynamo DB ARN"
}

output "dynamodb_id" {
  value       = aws_dynamodb_table.dynamo_db.id
  description = "Dynamo DB ID"
}
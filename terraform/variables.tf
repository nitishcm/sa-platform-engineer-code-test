variable "dynamodb_table_name" {
  type        = string
  description = "Name of the table to create in DynamoDB"
}

variable "dynamodb_rcu" {
  type = number

  description = "Read count unit for dynamo db "
}

variable "dynamodb_wcu" {
  type = number

  description = "Write count unit for dynamo db "
}

variable "hash_key" {
  type = object({
    name : string,
    type : string
  })

}
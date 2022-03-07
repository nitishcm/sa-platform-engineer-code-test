variable "dynamodb_table_name" {
    type = string
    description = "Name of the table to create in DynamoDB"
}

variable "dynamodb_rcu" {
    type = number
    default = 2
    description = "Read count unit for dynamo db "
}

variable "dynamodb_wcu" {
    type = number
    default = 1
    description = "Write count unit for dynamo db "
}
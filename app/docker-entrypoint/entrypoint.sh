#!/usr/bin/env bash
java -jar /app/localstack-demo-0.0.1-SNAPSHOT.jar --test.data.file.path=/app/testData.json --amazon.dynamodb.endpoint=http://localstack:4566
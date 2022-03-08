#!/usr/bin/env bash
java -jar bin/localstack-demo-0.0.1-SNAPSHOT.jar --test.data.file.path=testData.json --amazon.dynamodb.endpoint=http://localstack:4566
#!/bin/sh
aws cloudformation create-stack --profile=dev --stack-name BasicWeb --template-body file://~/Temp/infrastructure/csye6225-infra.json \
 --parameters ParameterKey=KeyName,ParameterValue=crypto ParameterKey=ImageId,ParameterValue=ami-0cf0e3de90b238bcb \
 ParameterKey=BucketName,ParameterValue=xvaefsd.dev.kanzhang.me --capabilities CAPABILITY_NAMED_IAM
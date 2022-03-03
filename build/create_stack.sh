#!/bin/sh
aws cloudformation create-stack --profile=dev --stack-name BasicWeb --template-body file://~/Temp/infrastructure/csye6225-infra.json \
 --parameters ParameterKey=KeyName,ParameterValue=crypto ParameterKey=ImageId,ParameterValue=ami-0ce9041f2a185676f
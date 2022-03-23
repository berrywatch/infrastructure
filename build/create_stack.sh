#!/bin/sh
aws cloudformation create-stack --profile=demo --stack-name BasicWeb --template-body file://~/Temp/infrastructure/csye6225-infra.yaml \
 --parameters ParameterKey=KeyName,ParameterValue=crypto ParameterKey=ImageId,ParameterValue=ami-05c9d591a059610f6 \
 ParameterKey=EnvName,ParameterValue=prod --capabilities CAPABILITY_NAMED_IAM
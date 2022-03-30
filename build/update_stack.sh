#!/bin/sh
aws cloudformation update-stack --profile=dev --stack-name BasicWeb --template-body file://~/Temp/infrastructure/csye6225-infra.yaml \
 --parameters ParameterKey=KeyName,ParameterValue=crypto ParameterKey=ImageId,ParameterValue=ami-0c12d59262b44ecd2 \
 ParameterKey=EnvName,ParameterValue=dev ParameterKey=WebSourceBucket,ParameterValue=codedeploy.dev.kanzhang.me --capabilities CAPABILITY_NAMED_IAM
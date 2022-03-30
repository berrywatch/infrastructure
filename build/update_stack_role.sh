#!/bin/sh
aws cloudformation update-stack --profile=dev --stack-name BasicRole --template-body file://~/Temp/infrastructure/IAMrole.yaml \
 --parameters  ParameterKey=WebSourceBucket,ParameterValue=codedeploy.dev.kanzhang.me \
 ParameterKey=CodeDeployAppName,ParameterValue=csye6225-webapp \
 ParameterKey=GitHubActionIAMUser,ParameterValue=ghactions-app --capabilities CAPABILITY_NAMED_IAM
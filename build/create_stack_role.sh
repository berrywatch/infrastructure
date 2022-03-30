#!/bin/sh
aws cloudformation create-stack --profile=demo --stack-name BasicRole --template-body file://~/Temp/infrastructure/IAMrole.yaml \
 --parameters  ParameterKey=WebSourceBucket,ParameterValue=codedeploy.prod.kanzhang.me \
 ParameterKey=CodeDeployAppName,ParameterValue=csye6225-webapp \
 ParameterKey=GitHubActionIAMUser,ParameterValue=ghactions-app --capabilities CAPABILITY_NAMED_IAM
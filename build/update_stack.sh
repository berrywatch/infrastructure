#!/bin/sh
aws cloudformation update-stack --profile=demo --stack-name BasicWeb \
--template-body file://./csye6225-infra.yaml \
 --parameters ParameterKey=KeyName,ParameterValue=crypto \
 ParameterKey=ImageId,ParameterValue=ami-02920cf86b9830a31 \
 ParameterKey=EnvName,ParameterValue=prod \
 ParameterKey=UserName,ParameterValue=Kan_demo \
 ParameterKey=WebSourceBucket,ParameterValue=codedeploy.prod.kanzhang.me \
 --capabilities CAPABILITY_NAMED_IAM
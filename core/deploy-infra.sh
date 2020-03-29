#!/bin/bash -x

STACK_NAME=odcore
REGION=eu-west-2
CLI_PROFILE=odcore

EC2_INSTANCE_TYPE=t2.micro

# Deploy CloudFormation template
echo -e "\n\n=== Deploying main.yml ==="
aws cloudformation deploy \
    --region $REGION \
    --profile $CLI_PROFILE \
    --stack-name $STACK_NAME \
    --template-file main.yml \
    --no-fail-on-empty-changeset \
    --capabilities CAPABILITY_NAMED_IAM \
    --parameter-overrides \
        EC2InstanceType=$EC2_INSTANCE_TYPE

if [ $? -eq 0 ]; then
    aws cloudformation list-exports \
        --profile $CLI_PROFILE \
        --query "Exports[?Name=='InstanceDNS'].Value"
fi

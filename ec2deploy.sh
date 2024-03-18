#!/bin/bash

set -x

#variables
STACK_NAME="container-challenge"

#create stack
aws cloudformation create-stack --stack-name $STACK_NAME --template-body file://cloudformation.yaml

#wait for stack to complete
echo "Waiting for stack creation to complete."
aws cloudformation wait stack-create-complete --stack-name $STACK_NAME
echo "Stack creation complete."

#get the public dns
INSTANCE_PUBLIC_DNS=$(aws cloudformation describe-stacks --stack-name $STACK_NAME --query "Stacks[0].Outputs[?OutputKey=='InstancePublicDNS'].OutputValue" --output text)
echo "Instance Public DNS: $INSTANCE_PUBLIC_DNS"

#update github variable
echo "Updating github secret EC2_HOSTNAME."
gh secret set EC2_HOSTNAME -b "$INSTANCE_PUBLIC_DNS" -r brendenbecherer/container_challenge
echo "Github secret EC2_HOSTNAME updated."
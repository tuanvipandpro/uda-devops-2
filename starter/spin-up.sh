#!/bin/bash

# Replace these values with your actual temporary credentials
export AWS_ACCESS_KEY_ID="xxx"
export AWS_SECRET_ACCESS_KEY="xxx"
export AWS_SESSION_TOKEN="xxx"

echo "AWS temporary credentials have been set."


aws cloudformation create-stack --stack-name network-1 --template-body file://network.yml --parameters file://network-parameters.json --region us-east-1
aws cloudformation create-stack --stack-name udagram-1 --template-body file://udagram.yml --parameters file://udagram-parameters.json --region us-east-1
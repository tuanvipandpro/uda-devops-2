#!/bin/bash

# Replace these values with your actual temporary credentials
export AWS_ACCESS_KEY_ID="your_access_key_id"
export AWS_SECRET_ACCESS_KEY="your_secret_access_key"
export AWS_SESSION_TOKEN="your_session_token"

echo $AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY
echo $AWS_SESSION_TOKEN
echo "AWS temporary credentials have been set."

aws cloudformation create-stack --stack-name network-1  --template-body file://network.yml  --parameters file://network-parameters.json --region=us-east-1
aws cloudformation create-stack --stack-name server-1  --template-body file://servers.yml --parameters file://servers-parameters.json --region=us-east-1


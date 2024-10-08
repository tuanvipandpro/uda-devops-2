#!/bin/bash

# Replace these values with your actual temporary credentials
export AWS_ACCESS_KEY_ID="xxx"
export AWS_SECRET_ACCESS_KEY="xxx"
export AWS_SESSION_TOKEN="xxx"

echo "AWS temporary credentials have been set."

aws cloudformation delete-stack  --stack-name network-1
aws cloudformation delete-stack  --stack-name udagram-1
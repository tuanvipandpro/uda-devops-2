# CD12352 - Infrastructure as Code Project Solution
# [TuanLM15]

cd starter

## Spin up instructions
aws cloudformation create-stack --stack-name network-1  --template-body file://network.yml  --parameters file://network-parameters.json --region=us-east-1

aws cloudformation create-stack --stack-name server-1  --template-body file://servers.yml --parameters file://servers-parameters.json --region=us-east-1

## Tear down instructions
aws cloudformation create-stack --stack-name network-1
aws cloudformation create-stack --stack-name server-1
  
## Other considerations
TBD
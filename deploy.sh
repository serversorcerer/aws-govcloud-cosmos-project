#!/bin/bash

set -e
REGION="us-east-1"

echo "🚀 Deploying COSMOS VPCs and Transit Gateway..."

aws cloudformation deploy --template-file cloudformation/vpc-dev.yaml --stack-name cosmos-vpc-dev --region $REGION --capabilities CAPABILITY_NAMED_IAM
aws cloudformation deploy --template-file cloudformation/vpc-shared.yaml --stack-name cosmos-vpc-shared --region $REGION --capabilities CAPABILITY_NAMED_IAM
aws cloudformation deploy --template-file cloudformation/vpc-prod.yaml --stack-name cosmos-vpc-prod --region $REGION --capabilities CAPABILITY_NAMED_IAM
aws cloudformation deploy --template-file cloudformation/tgw-create.yaml --stack-name cosmos-tgw --region $REGION --capabilities CAPABILITY_NAMED_IAM

echo "✅ Base network architecture deployed."
echo "ℹ️  To attach VPCs and configure TGW routing, update this script with your actual resource IDs."
#!/bin/bash

# Retrieve parameter values from Parameter Store
ACCOUNT_ID=$(aws ssm get-parameter --name /myapp/aws-credentials/account_id --query "Parameter.Value" --output text)
AWS_DEFAULT_REGION=$(aws ssm get-parameter --name /myapp/aws-credentials/region --query "Parameter.Value" --output text)
REPOSITORY_URI=$(aws ssm get-parameter --name /myapp/aws-credentials/registry --query "Parameter.Value" --output text)

# Authenticate Docker with your ECR registry
aws ecr get-login-password --region $AWS_DEFAULT_REGION | docker login --username AWS --password-stdin $REPOSITORY_URI

# Pull the image
docker pull $REPOSITORY_URI:latest

# Run your container using the pulled image
docker run -d $REPOSITORY_URI:latest

#!/bin/bash

# Create Amazon ECR

aws ecr create-repository \
    --repository-name craftcms-aws

# Create Amazon ECS

ecs-cli up \
    --azs ap-northeast-1b,ap-northeast-1c \
    --keypair akky \
    --capability-iam \
    --size 1 \
    --instance-type t2.medium

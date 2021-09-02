#!/bin/bash
set -e

echo "Logging to EKS..."
aws eks update-kubeconfig --region $AWS_REGION --name $EKS_CLUSTER

sudo snap install helm --classic

echo "Rolling back application..."
helm rollback $REPOSITORY          \
    --namespace $REPOSITORY        \
    --wait --recreate-pods --debug \
    --timeout $TIMEOUT

echo "Success!"

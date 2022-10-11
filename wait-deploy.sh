#!/bin/bash

while :
do
  if gcloud firestore operations list --filter="done:false" --project timeless-beta | grep -q "IndexOperationMetadata"; then
    echo "wait more time"
    sleep 120
  else
    echo "deploy done"
    break
  fi
done
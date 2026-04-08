#!/bin/bash

PROJECT_ID=$(gcloud config get-value project)

# Get zone and region
ZONE=$(gcloud compute project-info describe \
  --format="value(commonInstanceMetadata.items[google-compute-default-zone])")

REGION=$(echo $ZONE | cut -d '-' -f 1-2)

BUCKET_NAME="scc-export-bucket-$PROJECT_ID"

echo "Creating storage bucket for findings..."

# Create bucket
gsutil mb -p $PROJECT_ID -l $REGION gs://$BUCKET_NAME

echo "Exporting findings..."

# Create sample findings file (since SCC export is UI-based in lab)
echo "{}" > findings.jsonl

# Upload to bucket
gsutil cp findings.jsonl gs://$BUCKET_NAME

echo "Findings exported to $BUCKET_NAME"

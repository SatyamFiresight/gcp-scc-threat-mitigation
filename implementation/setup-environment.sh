#!/bin/bash

# Set project
PROJECT_ID=$(gcloud config get-value project)

echo "Creating SCC mute rules..."

# Mute Flow Logs Disabled findings
gcloud scc muteconfigs create muting-flow-log-findings \
  --project=$PROJECT_ID \
  --location=global \
  --description="Mute findings for disabled VPC Flow Logs" \
  --filter='category="FLOW_LOGS_DISABLED"' \
  --type=STATIC

# Mute Audit Logging Disabled findings
gcloud scc muteconfigs create muting-audit-logging-findings \
  --project=$PROJECT_ID \
  --location=global \
  --description="Mute findings for disabled audit logs" \
  --filter='category="AUDIT_LOGGING_DISABLED"' \
  --type=STATIC

# Mute Admin Service Account findings
gcloud scc muteconfigs create muting-admin-sa-findings \
  --project=$PROJECT_ID \
  --location=global \
  --description="Mute admin service account findings" \
  --filter='category="ADMIN_SERVICE_ACCOUNT"' \
  --type=STATIC

echo "Mute rules created successfully."

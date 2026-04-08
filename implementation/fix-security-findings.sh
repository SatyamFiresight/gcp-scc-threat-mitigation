#!/bin/bash

echo "Fixing high severity vulnerabilities (SSH & RDP exposure)..."

# Remove insecure rules
gcloud compute firewall-rules delete default-allow-rdp --quiet
gcloud compute firewall-rules delete default-allow-ssh --quiet

# Restrict RDP access
gcloud compute firewall-rules create default-allow-rdp \
  --source-ranges=35.235.240.0/20 \
  --allow=tcp:3389 \
  --description="Restricted RDP access" \
  --priority=65534

# Restrict SSH access
gcloud compute firewall-rules create default-allow-ssh \
  --source-ranges=35.235.240.0/20 \
  --allow=tcp:22 \
  --description="Restricted SSH access" \
  --priority=65534

echo "Firewall rules updated successfully."

## Architecture Overview

This project implements a cloud security workflow using Google Cloud Security Command Center (SCC) to detect and mitigate threats.

### Core Components

- **Security Command Center (SCC)**  
  Centralized platform for vulnerability detection and security monitoring.

- **Compute Engine VM (cls-vm)**  
  Hosts a sample web application used for security scanning.

- **Firewall Rules**  
  Control inbound traffic and restrict unauthorized access.

- **Web Security Scanner**  
  Identifies vulnerabilities in the deployed web application.

- **Cloud Storage (GCS)**  
  Stores exported findings for auditing and long-term analysis.

---

### Security Workflow

1. Access SCC dashboard and analyze findings over a defined time range (180 days).
2. Create mute rules for non-critical or accepted risks.
3. Identify and fix high severity vulnerabilities (SSH/RDP exposure).
4. Perform application security scanning.
5. Export findings to Cloud Storage for audit purposes.

---

### Architecture Diagram (Add your screenshot)

![Architecture](../screenshots/scc-dashboard.png)

> Replace this image with your SCC dashboard or architecture-related screenshot.

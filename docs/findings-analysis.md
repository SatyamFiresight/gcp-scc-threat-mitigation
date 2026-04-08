## Findings Analysis and Remediation

Using Security Command Center (SCC), multiple findings were identified and categorized based on severity and impact.

---

### 🔴 High Severity Findings

#### 1. Open SSH Port (Port 22)
- **Issue:** SSH access was exposed to the public internet.
- **Risk:** Susceptible to brute-force attacks and unauthorized access.
- **Remediation:** Restricted access using trusted IP range (35.235.240.0/20).

---

#### 2. Open RDP Port (Port 3389)
- **Issue:** RDP access allowed from public sources.
- **Risk:** High risk of credential attacks and system compromise.
- **Remediation:** Limited access to controlled IP range and removed public exposure.

---

### 🟡 Configuration-Based Findings (Muted)

As part of the scenario requirements, certain findings were intentionally muted:

- **Flow Logs Disabled**
- **Audit Logging Disabled**
- **Admin Service Account Findings**

These were acknowledged but excluded from active monitoring using SCC mute rules.

📸 Example:
![Mute Rules](../screenshots/mute-rules.png)

---

### 🌐 Application Security Assessment

A web application hosted on Compute Engine was scanned using **Web Security Scanner**.

Steps performed:
- Assigned static external IP to VM
- Accessed application via `http://<EXTERNAL_IP>:8080`
- Ran automated security scan

📸 Example:
![Web Scan](../screenshots/web-security-scan.png)

---

### 📦 Findings Export

Security findings were exported to a Cloud Storage bucket for long-term storage and auditing.

- Format: JSONL  
- Scope: All findings  
- Storage: GCS Bucket  

📸 Example:
![Export](../screenshots/findings-export.png)

---

### 🔐 Key Security Learnings

- Public exposure of ports is a critical risk factor  
- Proper firewall configuration is essential  
- Centralized monitoring improves visibility  
- SCC enables effective vulnerability management  
- Security requires continuous monitoring and response  

---

### 📊 SCC Dashboard View

![SCC Dashboard](../screenshots/scc-dashboard.png)

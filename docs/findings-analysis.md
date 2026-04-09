# 🔍 Findings Analysis

## 📌 Overview

Security Command Center (SCC) and Web Security Scanner were used to identify security risks in the environment.

The findings include misconfigurations, vulnerabilities, and potential threats that could impact the security posture of the application.

---

## 🚨 Key Findings Identified

### 🔴 1. Public IP Exposure
- **Severity:** High  
- **Resource:** Compute Engine VM  

**Risk:**  
The VM is exposed to the internet, increasing the attack surface.

**Impact:**  
- Unauthorized access attempts  
- Increased risk of brute-force attacks  

**Mitigation:**  
- Restrict access using firewall rules  
- Limit inbound traffic to trusted IP ranges  

---

### 🔴 2. Firewall Rules Too Permissive
- **Severity:** Medium  

**Risk:**  
Firewall rules allow unrestricted SSH (22) and RDP (3389) access.

**Impact:**  
- Remote access exploitation  
- Potential unauthorized login attempts  

**Mitigation:**  
- Restrict source IP ranges  
- Apply least privilege network access  

📸  
![Firewall Rules](../screenshots/firewall-rules-config.png)

---

### 🟠 3. Logging Disabled
- **Severity:** Medium  

**Risk:**  
VPC Flow Logs and audit logging are disabled.

**Impact:**  
- Lack of visibility into network activity  
- Difficult to investigate incidents  

**Mitigation:**  
- Enable logging for monitoring and auditing  

---

### 🔴 4. Default Service Account Usage
- **Severity:** Medium  

**Risk:**  
Default service account is used with broad permissions.

**Impact:**  
- Privilege escalation  
- Unauthorized resource access  

**Mitigation:**  
- Use custom service accounts  
- Apply least privilege IAM roles  

---

### 🔴 5. IAM Anomalous Activity
- **Severity:** High  

**Risk:**  
Unusual IAM activity detected (anomalous grants).

**Impact:**  
- Potential insider threat  
- Unauthorized privilege assignment  

**Mitigation:**  
- Review IAM policies  
- Remove unnecessary roles  

---

## 🧪 Web Application Vulnerabilities

### 🔴 6. Cross-Site Scripting (XSS)
- **Severity:** High  

**Description:**  
User input is not properly sanitized, allowing script injection.

**Impact:**  
- Session hijacking  
- Data theft  
- Malicious script execution  

---

### 🟠 7. Clickjacking
- **Severity:** Low  

**Description:**  
Application can be embedded in malicious frames.

**Impact:**  
- User interaction manipulation  
- Phishing attacks  

---

📸  
![Scan Results](../screenshots/web-security-scan-results.png)

---

## 📊 Findings Dashboard

Security Command Center provides a centralized view of all findings.

📸  
![SCC Findings](../screenshots/scc-findings-overview.png)

---

## 🔇 Noise Reduction (Mute Rules)

To reduce unnecessary alerts, mute rules were applied for:

- FLOW_LOGS_DISABLED  
- AUDIT_LOGGING_DISABLED  
- ADMIN_SERVICE_ACCOUNT  

📸  
![Mute Rules](../screenshots/scc-mute-rules-configured.png)

---

## 📦 Exported Findings

Findings were exported to Cloud Storage for further analysis and reporting.

📸  
![GCS Export](../screenshots/gcs-findings-export.png)

---

## 🧠 Key Insights

- Misconfigurations are a major source of security risks  
- Continuous monitoring is critical in cloud environments  
- Not all findings require action (some can be tuned using mute rules)  
- Combining multiple tools gives better visibility  

---

## 🚀 Conclusion

This analysis demonstrates how:

- Security issues can be identified using SCC  
- Vulnerabilities can be detected using Web Security Scanner  
- Risks can be mitigated through proper configuration  

It reflects a practical approach to cloud security monitoring and incident response.

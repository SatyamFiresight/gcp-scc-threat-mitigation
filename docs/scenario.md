# 🎯 Scenario: Cymbal Bank Security Incident Simulation

## 📌 Overview

This project simulates a real-world cloud security scenario where a financial application is deployed in an insecure Google Cloud environment.

The goal is to identify, analyze, and mitigate security risks using native GCP security tools.

---

## 🏦 Business Context

**Cymbal Bank** is a fictional financial institution that has deployed its corporate banking web application on Google Cloud.

The application is hosted on a Compute Engine virtual machine and is publicly accessible over the internet.

---

## ⚠️ Security Situation

The deployed environment contains multiple intentional misconfigurations and vulnerabilities, including:

### 🔓 Infrastructure Issues
- VM instance exposed with a public IP address  
- Overly permissive firewall rules (SSH/RDP open to all)  
- Logging disabled for critical resources  
- Use of default service accounts with excessive permissions  

---

### 🌐 Application-Level Vulnerabilities
- Cross-Site Scripting (XSS) vulnerabilities  
- Clickjacking risks  
- Unsanitized user input in web application  

---

### 🔐 IAM & Configuration Risks
- Primitive roles assigned (Owner/Editor)  
- IAM anomalous activities detected  
- Misconfigured storage bucket policies  

---

## 🎯 Objective

As a **Cloud Security Analyst**, the task is to:

- Identify all active security findings using Security Command Center  
- Analyze vulnerabilities using Web Security Scanner  
- Apply remediation steps to reduce attack surface  
- Configure controls to improve security posture  
- Export findings for auditing and reporting  

---

## 🧠 Expected Outcome

By the end of this project:

- All critical vulnerabilities are identified  
- High-risk misconfigurations are mitigated  
- Security visibility is improved  
- Findings are documented and exported  

---

## 🚀 Real-World Relevance

This scenario reflects real-world responsibilities of:

- SOC Analysts  
- Cloud Security Engineers  
- DevSecOps Engineers  

It demonstrates how cloud-native tools can be used to secure infrastructure and applications in production environments.

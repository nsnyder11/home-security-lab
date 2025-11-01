# Home Security Lab

```mermaid
graph TD
    subgraph "VirtualBox Host-Only (192.168.56.0/24)"
      KALI["Kali\n192.168.56.10\nAttacker"]
      META["Metasploitable3\n.20\nWindows Target"]
      DVWA["DVWA\n.30\nWeb Vulns"]
      SIEM["SIEM (ELK)\n.40\nLogging"]
    end
    KALI -->|Nmap/MSF| META
    KALI -->|SQLMap/Burp| DVWA
    META -->|Logs| SIEM
    DVWA -->|Logs| SIEM

Overview
A self-contained, version-controlled penetration testing and incident response lab built with Vagrant + VirtualBox.

Kali (192.168.56.10) — Attacker workstation with Nmap, Metasploit, sqlmap, Burp Suite, and more
Metasploitable3 (Win2k8) (.20) — Vulnerable Windows server (SMB, RDP, EternalBlue)
DVWA (.30) — Damn Vulnerable Web Application (SQLi, XSS, CSRF, file upload)
SIEM (ELK Stack) (.40) — Centralized logging, detection, and visualization with Elasticsearch + Kibana


Capabilities

Offensive Security: Web app exploitation, Windows system attacks, brute force, password cracking
Defensive Hardening: Secure configurations, patch vulnerabilities, disable services
Incident Detection & Response: Real-time log analysis, alert creation, containment actions
Full Audit Trail: All scans, exploits, and reports automatically committed to GitHub


Projects (In Progress)

Nmap Network Discovery
SQL Injection + Hardening
EternalBlue Exploit
XSS & CSRF Attacks
SIEM Alerting & Incident Response
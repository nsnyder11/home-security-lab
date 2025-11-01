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
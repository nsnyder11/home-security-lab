```mermaid
graph TD
    subgraph "VirtualBox Host-Only (192.168.56.0/24)"
      KALI[Kali<br>192.168.56.10<br>Attacker]
      META[Metasploitable3<br>.20<br>Windows Target]
      DVWA[DVWA<br>.30<br>Web Vulns]
      SIEM[SIEM (ELK)<br>.40<br>Logging]
    end
    KALI -->|Nmap/MSF| META
    KALI -->|SQLMap/Burp| DVWA
    META -->|Logs| SIEM
    DVWA -->|Logs| SIEM
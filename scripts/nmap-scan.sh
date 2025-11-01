#!/bin/bash
nmap -sV -oX docs/scan.xml 192.168.56.0/24
echo "Scan complete: $(date)" >> docs/scan.log
git add docs/scan.xml docs/scan.log
git commit -m "Nmap scan $(date)"
git push

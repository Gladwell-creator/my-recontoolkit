#!/bin/bash

domain=$1

if [ -z "$domain" ]; then
  echo "Usage: ./recon.sh example.com"
  exit 1
fi

echo "🔍 Starting recon on $domain"

echo "[*] WHOIS Lookup"
whois $domain > whois.txt

echo "[*] DNS Info (nslookup)"
nslookup $domain > nslookup.txt

echo "[*] DNS Dig"
dig $domain > dig.txt

echo "[*] Nmap Scan (Top Ports + Versions)"
nmap -sC -sV -oN nmap_scan.txt $domain

echo "[*] HTTP Headers"
curl -I http://$domain > headers.txt

echo "✅ Recon complete! Check your output files."

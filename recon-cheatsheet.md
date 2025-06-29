# 📖 Recon Cheatsheet

## 🔎 Subdomain Enumeration
- `sublist3r -d example.com`
- `assetfinder --subs-only example.com`

## 🌐 Port Scanning
- `nmap -sS -p- -T4 example.com`
- `nmap -sC -sV -oA output example.com`

## 🏗️ Directory Bruteforce
- `ffuf -u http://example.com/FUZZ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt`

## 💻 Web Tech Fingerprinting
- `whatweb example.com`
- `wappalyzer`

## 🕵🏾 OSINT Tools
- `theHarvester -d example.com -b all`
- `hunter.io`, `emailfinder.io`

# Home SOC Lab

## Overview
This project is a home-built Security Operations Center (SOC) lab designed to simulate real-world cybersecurity monitoring, detection, and response workflows. It uses a Kali Linux attacker machine and an Ubuntu server acting as a target system and log monitoring sensor.

The goal of this lab is to replicate how real SOC teams detect and respond to threats such as SSH brute-force attacks and web-based reconnaissance.

## Architecture
- Kali Linux (Attacker)
    - Used for simulated attacks and reconnaissance
    - Tools: Nmap, SSH, Curl
- Ubuntu Server (SOC Sensor / Target)
    - Hosts services and collects security logs
    - Services: SSH, Apache2
    - Logging: auth.log, apache access logs, auditd

## Detection Scenario
- SSH brute-force detection
   * Assigns severity levels:
     LOW: 1–4 attempts
     MEDIUM: 5–9 attempts
     HIGH: 10+ attempts
- Groups attempts by source IP
- Web access monitoring
- File integrity monitoring

## Tools Used
- Ubuntu Server
- Kali Linux
- Apache2
- OpenSSH
- auditd
- fail2ban
- Bash scripting
- Git & GitHub version control

## Project Structure
- scripts/
- logs/
- configs/

## Author
Brayden Ray
GitHub: https://github.com/braydenray05/home-soc-lab

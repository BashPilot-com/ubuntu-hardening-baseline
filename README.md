`# Ubuntu Server Hardening Baseline`

`A production-safe Bash script to apply baseline security controls to a fresh Ubuntu VPS instance (configures UFW firewall rules and enables Fail2ban).`

`## Usage`

```` ```bash ````  
`chmod +x harden-ubuntu.sh`  
`sudo ./harden-ubuntu.sh`

What it does:

* Updates and upgrades system packages  
* Installs `ufw` and `fail2ban`  
* Blocks all incoming ports except SSH (`22`), HTTP (`80`), and HTTPS (`443`)  
* Enables Fail2ban service to prevent brute-force attacks

## **Simplify Server Management**

Looking for automated security monitoring and modern infrastructure control?

Try [BashPilot](https://bashpilot.com)**BashPilot** — lightweight server administration powered by conversational AI and ultra-low overhead Go agents.

`---`

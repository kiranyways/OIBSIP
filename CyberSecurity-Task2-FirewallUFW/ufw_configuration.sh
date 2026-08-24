```bash
#!/bin/bash

# UFW Basic Firewall Configuration

# Install UFW
sudo apt update
sudo apt install -y ufw

# Allow SSH
sudo ufw allow ssh

# Deny HTTP
sudo ufw deny http

# Allow HTTPS
sudo ufw allow https

# Deny FTP
sudo ufw deny ftp

# Enable UFW
sudo ufw enable

# Display firewall status
sudo ufw status verbose
```

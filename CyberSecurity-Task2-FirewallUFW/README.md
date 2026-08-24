## Firewall Configuration

### What a Firewall Does

A firewall controls network traffic entering or leaving a computer according to configured security rules. UFW (Uncomplicated Firewall) provides a simple command-line interface for managing firewall rules on Linux.

### Configured Rules

| Rule | Action | Purpose |
|---|---|---|
| SSH (22) | ALLOW | Allows SSH connections for remote administration. |
| HTTP (80) | DENY | Blocks unencrypted HTTP traffic. |
| HTTPS (443) | ALLOW | Allows secure web traffic over HTTPS. |
| FTP (21) | DENY | Blocks FTP traffic because FTP is an older, unencrypted file-transfer protocol. |

### Why These Rules Were Chosen

SSH was allowed because port 22 is commonly used for secure remote administration. HTTP was denied because normal HTTP traffic is not encrypted. HTTPS was allowed because it provides encrypted web communication using TLS. FTP was denied because traditional FTP does not provide encrypted communication.

These rules provide a basic example of allowing required services while blocking selected services that may introduce unnecessary security risks.

### Testing Denied Traffic

To verify that the HTTP deny rule was working, a temporary HTTP service was started on Kali Linux on port 80. A connection attempt was made from the Windows host using PowerShell:

```powershell
Test-NetConnection IP_address -Port 80
```

The test returned:

```text
TcpTestSucceeded : False
```

This confirmed that the connection attempt to TCP port 80 was blocked by the firewall.

### Firewall Status

The active firewall rules were verified using:

```bash
sudo ufw status verbose
```

The output showed the configured SSH, HTTP, HTTPS, and FTP rules.

### Configuration Script

The complete firewall configuration is also provided in:

```text
ufw_configuration.sh
```

The script contains the UFW installation, rule configuration, firewall activation, and status verification commands in sequence.
## References

1. Ubuntu Community Help Wiki — UFW  
   https://help.ubuntu.com/community/UFW
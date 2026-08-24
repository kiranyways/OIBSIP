# Task 8 — Capture Network Traffic with Wireshark

**Internship:** Oasis Infobyte Cybersecurity Internship  
**Task:** 8 — Capture Network Traffic with Wireshark  
**Author:** Kiran Nawaz

## Objective

This project demonstrates how to capture and analyse live network traffic using Wireshark. It includes packet capture, protocol filtering, TCP three-way handshake analysis, HTTP packet analysis, and basic security observations.

## Tools Used

- Wireshark 4.6.3
- Kali Linux
- Firefox Web Browser

## Installation

Wireshark was installed on Kali Linux using the following commands:

```bash
sudo apt update
sudo apt install wireshark
```

The installation was verified using:

```bash
wireshark --version
```

## Packet Capture

- Captured live network traffic for more than 2 minutes.
- Generated traffic through browser activitIES.
- Analysed the captured packets using Wireshark display filters.
- Saved the final capture as `wireshark_capture.pcap`.

The capture was performed on the appropriate local network interface with the required packet-capture permissions.

## HTTP Analysis

- Applied the `http` display filter.
- Observed HTTP GET requests in the captured traffic.
- Visible information included the requested resource, host, browser information, and HTTP headers.
- The HTTP request was readable because HTTP does not encrypt application data.

## DNS Analysis

- Applied the `dns` display filter.
- Observed DNS queries and responses.
- DNS traffic showed communication related to domain-name resolution.

## TCP Three-Way Handshake

The TCP connection was established using the following sequence:

1. **SYN** – Client requests a connection.
2. **SYN-ACK** – Server acknowledges the request and responds.
3. **ACK** – Client confirms the response and completes the handshake.

This process establishes the TCP connection before normal data transfer begins.
The `tcp` display filter was used to isolate TCP traffic and analyse the handshake.

## Unencrypted HTTP Data

An HTTP GET request was identified and examined in Wireshark. The packet contained readable HTTP information such as the request method, host, browser information, and headers.

This demonstrates that information sent over HTTP can be viewed in readable form when the traffic is captured.

## Why HTTP Is Dangerous

HTTP transmits application data without encryption. An attacker who is able to capture the traffic may be able to view information contained in HTTP requests and responses, including cookies, URLs, headers, and potentially sensitive application data.

HTTPS protects communication by using TLS to encrypt the transmitted data. This makes the application data much harder for an attacker monitoring the network to read.

## Glossary

| Term | Definition |
|---|---|
| **Packet** | A small unit of data sent across a network. |
| **Protocol** | A set of rules that devices follow to communicate. |
| **Port** | A logical communication endpoint used by network applications. |
| **Payload** | The actual useful information carried inside a packet. |
| **Handshake** | A process where devices exchange messages to establish a connection. |

## Repository Structure

```text
wireshark-network-analysis/
│── README.md
│── wireshark_capture.pcap
│── screenshots/
│     ├── 01_wireshark_installation.png
│     ├── 02_wireshark_capture.png
│     ├── 03_http.png
│     ├── 04_dns.png
│     ├── 05_tcp_3way_handshake.png
│     └── 06_http_get.png
```

## Ethics

All traffic analysed in this task was generated in a controlled testing environment. Network traffic should only be captured on systems or networks that you own, administer, or have explicit permission to monitor.

## Conclusion

This project provided practical experience with packet capture and network analysis using Wireshark. HTTP, DNS, and TCP traffic were examined using display filters, and a TCP three-way handshake was identified and annotated. The HTTP analysis also demonstrated the security risks of unencrypted communication and the importance of using HTTPS to protect sensitive data.

## Reference

**Wireshark User Guide:**  
https://www.wireshark.org/docs/wsug_html_chunked/
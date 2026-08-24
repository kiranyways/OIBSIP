# Research Report: Common Network Security Threats

**Task 4 — Cybersecurity Internship**  
**Oasis Infobyte**  
**Author:** Kiran Nawaz
---

## 1. Introduction

Network security is important because organizations depend on networks to provide access to websites, applications, databases, cloud services, and communication systems. A successful network attack can interrupt services, expose sensitive information, redirect users, or allow attackers to gain access to other systems. Threats such as DoS/DDoS, Man-in-the-Middle (MITM) attacks, IP spoofing, and DNS poisoning take advantage of different weaknesses in network communication. Understanding how these attacks work and applying appropriate security controls can reduce both the likelihood and the impact of an incident.

## 2. DoS/DDoS Attacks

### 2.1 How DoS and DDoS Attacks Work

A Denial-of-Service (DoS) attack attempts to make a system, application, or network service unavailable to legitimate users. The attacker may send more traffic or requests than the target can handle, consume network bandwidth, or use requests that require a large amount of processing.

A Distributed Denial-of-Service (DDoS) attack uses multiple systems to generate the traffic. These systems may be compromised devices controlled as a botnet, or the attacker may abuse exposed services that can amplify a relatively small request into a much larger amount of traffic. CISA explains that DDoS attacks can exhaust network, application, or system resources and make services inaccessible to legitimate users.

### 2.2 Real-World Example: 2018 GitHub DDoS Attack

In February 2018, GitHub experienced a DDoS attack that reached approximately 1.35 terabits per second, making it one of the largest recorded DDoS attacks at the time. The attack used exposed Memcached servers to amplify traffic toward GitHub. GitHub's automated response detected the attack and redirected traffic through Akamai's DDoS mitigation service, which filtered the malicious traffic. The main attack lasted about 20 minutes.
### 2.3 Impact

A successful DDoS attack can:

- Make websites or applications unavailable.
- Interrupt business operations and online services.
- Cause financial losses through downtime.
- Increase network and infrastructure costs.
- Damage an organization's reputation if customers cannot access its services.

### 2.4 Mitigation Strategies

**1. Use DDoS protection and traffic scrubbing**

Organizations can use a DDoS protection provider or network service that detects abnormal traffic and filters malicious packets before they reach the main infrastructure.

**2. Apply rate limiting and access controls**

Rate limiting can restrict how many requests a client can make within a period of time. Firewalls, access-control lists, and application-level controls can also block unwanted traffic.

**3. Prevent spoofing and monitor network traffic**

Source Address Validation (SAV), access-control lists, and unicast Reverse Path Forwarding (uRPF) can reduce traffic using forged source addresses. Continuous monitoring also helps administrators identify unusual traffic patterns early. NIST recommends these controls as part of broader DDoS and routing-security defenses.

## 3. Man-in-the-Middle (MITM) Attacks

### 3.1 How MITM Attacks Work

A Man-in-the-Middle attack occurs when an attacker positions themselves between two systems that are communicating. The attacker may intercept traffic, monitor information, or modify data before forwarding it to the intended destination. NIST describes MITM as an attack in which an attacker is positioned between communicating parties to intercept or alter data.

MITM attacks can occur in different ways. For example, an attacker may use ARP cache poisoning on a local network, operate a fake Wi-Fi access point, or abuse DNS or other network services to redirect traffic. MITRE ATT&CK currently categorizes these activities under **Adversary-in-the-Middle (T1557)**, including ARP Cache Poisoning, DHCP Spoofing, Name Resolution Poisoning, and Evil Twin attacks.

### 3.2 Real-World Example: Lenovo Superfish

In 2015, security researchers discovered that Lenovo laptops had been shipped with Superfish software that installed a trusted certificate and could intercept encrypted web traffic. WIRED reported that the design made it possible for an attacker on a malicious network to intercept communications from affected systems. Researchers were able to recover the password used by the software and demonstrate the MITM risk.

### 3.3 Impact

MITM attacks can:

- Expose usernames, passwords, and other sensitive information.
- Allow attackers to modify data while it is being transmitted.
- Capture session information or authentication material.
- Redirect users to malicious websites.
- Support further attacks after credentials or other information are obtained.

### 3.4 Mitigation Strategies

**1. Use strong encryption and validate certificates**

HTTPS/TLS should be used for sensitive communications. Users and applications should not ignore certificate warnings because certificate validation helps detect attempts to impersonate a legitimate service.

**2. Secure local networks**

Organizations should use protections such as secure Wi-Fi configurations, network segmentation, DHCP snooping, and appropriate switch security. MITRE specifically identifies DHCP snooping and network-level controls as useful defenses against DHCP-based Adversary-in-the-Middle activity.

**3. Monitor for abnormal network behavior**

Network monitoring and intrusion-prevention systems can help identify unexpected ARP changes, rogue access points, suspicious DNS activity, and other indicators of MITM activity.

## 4. IP Spoofing

### 4.1 How IP Spoofing Works

IP spoofing occurs when an attacker changes the source IP address in network packets so that the traffic appears to come from another system. NIST defines spoofing generally as faking the sending address of a transmission. 

IP spoofing does not necessarily mean that the attacker has control of the address being impersonated. Instead, the attacker is manipulating packet information. This technique can be useful for hiding the real source of traffic, bypassing poorly configured filtering rules, or supporting reflection and amplification attacks.

### 4.2 Real-World Example: IP Spoofing in the 2018 GitHub DDoS Attack

The 2018 GitHub DDoS attack is also an example of how IP spoofing can be used in a larger attack. The Memcached amplification technique depended on requests being sent with a forged source address representing the intended victim. The exposed Memcached servers then sent much larger responses toward GitHub. This allowed the attacker to generate a very large amount of traffic without sending the same volume directly. [2]

### 4.3 Impact

IP spoofing can:

- Hide the actual source of malicious traffic.
- Help attackers bypass weak source-address filtering.
- Be used in reflection and amplification attacks.
- Make investigation and attribution more difficult.
- Support other network attacks such as DoS/DDoS.

### 4.4 Mitigation Strategies

**1. Implement Source Address Validation**

Network operators should validate whether packets are using source addresses that are legitimate for the network interface from which they arrive. NIST recommends Source Address Validation as an important defense against IP spoofing.

**2. Use ingress and egress filtering**

Routers and firewalls can use access-control lists to prevent packets with invalid or unexpected source addresses from entering or leaving a network.

**3. Use anti-spoofing controls together with monitoring**

Organizations should monitor unusual traffic patterns and combine filtering with controls such as uRPF where appropriate.

## 5. DNS Poisoning/Spoofing

### 5.1 How DNS Poisoning/Spoofing Works

The Domain Name System (DNS) translates domain names into IP addresses. DNS poisoning or spoofing involves causing a victim or DNS system to use an incorrect DNS response. As a result, a user who enters a legitimate domain name may be directed to an attacker-controlled server instead.

Attackers may target DNS caches, DNS configuration, DNS infrastructure, or organizations responsible for domain registration. MITRE ATT&CK also describes DNS manipulation as one method that can help an adversary establish an Adversary-in-the-Middle position.

### 5.2 Real-World Example: Sea Turtle DNS Hijacking Campaign

In 2019, Cisco Talos researchers reported a campaign known as Sea Turtle that compromised DNS-related infrastructure and affected approximately 40 organizations across the Middle East and North Africa. The attackers targeted telecommunications companies, Internet service providers, registrars, and government-related organizations. They changed DNS information so that traffic intended for legitimate services could be redirected to attacker-controlled servers. 

The campaign was particularly concerning because the initial compromise could occur at DNS or domain-registration infrastructure rather than directly inside the final victim's network.

### 5.3 Impact

DNS poisoning or spoofing can:

- Redirect users to fake or malicious websites.
- Support credential theft and phishing.
- Interrupt access to legitimate services.
- Redirect email or other network services.
- Help attackers intercept traffic and continue further attacks.

### 5.4 Mitigation Strategies

**1. Deploy DNSSEC**

DNS Security Extensions (DNSSEC) provide mechanisms for validating the authenticity and integrity of DNS information. NIST's current SP 800-81 Rev. 3 specifically recommends protecting the integrity and authenticity of authoritative DNS information using DNSSEC. 

**2. Secure DNS infrastructure and accounts**

Organizations should protect DNS management accounts with strong authentication, least-privilege access, and multi-factor authentication where supported. Changes to DNS records should be logged and monitored.

**3. Use protective DNS and monitor DNS activity**

Organizations can use protective DNS services to block known malicious domains and monitor unusual DNS requests and responses. DNS infrastructure should also be kept updated and configured according to current security guidance.

## 6. Comparison Table

| Threat | Attack Vector | Who Is at Risk? | Difficulty to Execute | Ease of Mitigation |
|---|---|---|---|---|
| DoS/DDoS | Large volumes of traffic or resource-exhausting requests | Websites, servers, applications, online services | Medium to High | Medium |
| MITM | Intercepting or redirecting network communication | Users on local networks, Wi-Fi users, organizations | Medium | Medium |
| IP Spoofing | Forged source IP addresses in packets | Networks, servers, and services exposed to spoofed traffic | Medium | Medium |
| DNS Poisoning/Spoofing | Manipulating DNS responses, records, or infrastructure | Internet users, organizations, DNS providers | Medium to High | Medium |


## 7. Conclusion

Network security threats can affect organizations in different ways, but three key lessons are important for network administrators:

1. **Monitor network traffic and services continuously.** Early detection of unusual traffic, DNS changes, or network behavior can reduce the impact of an attack.

2. **Use layered security controls.** No single control is enough. Firewalls, filtering, encryption, authentication, DNS security, network segmentation, and DDoS protection should work together.

3. **Keep infrastructure securely configured and updated.** Network devices, DNS services, applications, and security controls should be reviewed regularly to remove unnecessary exposure and reduce weaknesses that attackers can exploit.

## 8. References

1. Cybersecurity and Infrastructure Security Agency (CISA), Federal Bureau of Investigation (FBI), and Multi-State Information Sharing and Analysis Center (MS-ISAC). **Understanding and Responding to Distributed Denial-of-Service Attacks.**  
   https://www.cisa.gov/sites/default/files/publications/understanding-and-responding-to-ddos-attacks_508c.pdf

2. WIRED. **GitHub Survived the Biggest DDoS Attack Ever Recorded.** 2018.  
   https://www.wired.com/story/github-ddos-memcached/

3. National Institute of Standards and Technology (NIST). **Secure Interdomain Traffic Exchange: BGP Robustness and DDoS Mitigation.**  
   https://csrc.nist.gov/pubs/sp/800/189/ipd

4. National Institute of Standards and Technology (NIST). **Man-in-the-Middle Attack — CSRC Glossary.**  
   https://csrc.nist.gov/glossary/term/man_in_the_middle_attack

5. MITRE ATT&CK. **Adversary-in-the-Middle — T1557.**  
   https://attack.mitre.org/techniques/T1557/

6. WIRED. **Lenovo's Response to Its Dangerous Adware Is Astonishingly Clueless.** 2015.  
   https://www.wired.com/2015/02/lenovo-superfish/

7. WIRED. **Cyberspies Hijacked the Internet Domains of Entire Countries.** 2019.  
   https://www.wired.com/story/sea-turtle-dns-hijacking/

8. National Institute of Standards and Technology (NIST). **Secure Domain Name System (DNS) Deployment Guide — SP 800-81 Rev. 3.** 2026.  
    https://csrc.nist.gov/pubs/sp/800/81/r3/ipd

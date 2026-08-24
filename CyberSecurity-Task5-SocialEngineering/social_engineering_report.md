# Research Report: Social Engineering Attacks

**Task 5 — Cybersecurity Internship**  
**Oasis Infobyte**  
**Author:** Kiran Nawaz


---

## 1. Introduction

Social engineering is a type of cyberattack that targets people rather than directly attacking a computer system. Instead of depending only on technical vulnerabilities, the attacker tries to manipulate the victim into doing something that helps the attack. This may include clicking a malicious link, opening a file, sharing information, or approving a request.

Social engineering is a serious problem because even an organization with firewalls, antivirus software, and other security controls can still have an employee tricked into taking an unsafe action. Attackers may also use information about their targets to make fake messages, phone calls, or stories appear more believable.

The Verizon 2024 Data Breach Investigations Report found that 68% of breaches involved a non-malicious human element, including things such as social engineering and human error. This statistic should not be interpreted as meaning that 68% of breaches were caused by social engineering. It does, however, show how important human behavior is to cybersecurity.

The 2025 SANS Security Awareness Report collected responses from more than 2,700 security-awareness professionals across over 70 countries. 80% of respondents ranked social engineering as the number-one human-related risk, while phishing remained the leading social-engineering concern.

Some common forms of social engineering are phishing, pretexting, baiting, and quid pro quo. These attacks use different methods, but they all try to influence the victim's decisions and behavior. Understanding these techniques can help individuals and organizations recognize suspicious situations and reduce the risk of losing information, money, or system access.


## 2. Phishing

Phishing is one of the most common forms of social engineering. In a phishing attack, the attacker pretends to be a trusted person or organization and tries to convince the victim to provide information or perform an action.

The attacker may want:

- Usernames and passwords
- Banking information
- Credit card details
- MFA or verification codes
- Personal information
- Access to an organization

Phishing can happen through email, text messages, phone calls, social media, or fake websites.

MITRE ATT&CK lists phishing as technique **T1566** and includes several forms of phishing under this technique.

### 2.1 Spear Phishing

Spear phishing is a targeted version of phishing. Instead of sending the same message to thousands of people, the attacker chooses a particular person or organization.

For example, an attacker might find out that someone works in a company's finance department. They could then send that person an email that looks like it came from their manager and asks them to make a payment.

Because the message contains details about the victim or their workplace, it can look much more believable than a normal spam email.

### 2.2 Whaling

Whaling is phishing aimed at important people in an organization, such as CEOs, directors, or senior financial employees.

A common example is an attacker pretending to be a senior executive and asking an employee to make an urgent payment. The attacker is taking advantage of the fact that employees may be less likely to question a request from someone who appears to have authority.

### 2.3 Vishing

Vishing means voice phishing. Instead of using an email, the attacker uses a phone call or another voice-based method.

The caller may pretend to be from:

- A bank
- An IT department
- A government office
- A company
- A technical-support service

The attacker may then ask the victim for information or tell them to install software or approve a login.

### 2.4 Smishing

Smishing is phishing through SMS or other messaging services.

For example, a victim may receive a message saying that a package could not be delivered or that their bank account needs verification. A link in the message may take the victim to a fake website.

Smishing often works because people tend to check messages quickly on their phones and may react before carefully checking the sender or link.

### 2.5 How Phishing Works

A typical phishing attack can happen in the following way:

1. The attacker chooses a target.
2. Some information about the target may be collected from the internet or other sources.
3. The attacker creates a convincing message.
4. The message is sent by email, SMS, phone, or another method.
5. The victim clicks a link, opens an attachment, or provides information.
6. The attacker receives the information or gains access to an account.
7. The compromised account may then be used for further attacks.


### 2.6 Real-World Case Study: 2020 Twitter Attack

A well-known example of social engineering occurred at Twitter in July 2020.

According to Twitter's investigation, attackers targeted a small number of employees using phone-based spear phishing. The attackers were able to convince employees to provide credentials that gave them access to internal tools.

The attackers eventually targeted 130 Twitter accounts and were able to take control of 45 of them. They also downloaded information from up to eight accounts.

Several high-profile accounts were involved. The attackers used some of the compromised accounts to post cryptocurrency scam messages.

This incident is important because the attackers did not need to directly break into every high-profile account. They first targeted employees who had access to internal systems.

### 2.7 Phishing Prevention

**1. Check unexpected messages carefully.**  
Look at the sender address, links, spelling, and the reason for the request. A message that creates unnecessary urgency should be treated carefully.

**2. Verify important requests separately.**  
If someone asks for money, passwords, sensitive information, or account changes, confirm the request using a known phone number or another trusted method.

**3. Use multi-factor authentication.**  
MFA provides another layer of protection if a password is stolen. Phishing-resistant authentication is even better where it is available.

**4. Train employees regularly.**  
Employees should practice identifying phishing emails, suspicious links, attachments, phone calls, and text messages rather than receiving security training only once.


## 3. Pretexting

Pretexting is when an attacker creates a false story or situation to make a victim trust them.

For example, an attacker could pretend to be an IT employee and say that there is a problem with the victim's account. They might then ask the victim to confirm their username and password.

The important part of pretexting is the story. The attacker creates a reason for asking for information instead of simply asking for it without explanation.

### 3.1 How an Attacker Builds a False Scenario

A pretexting attack often starts with some basic research.

The attacker may:

1. Find information about the victim or organization.
2. Choose a believable identity.
3. Create a reason for contacting the victim.
4. Use information about the victim to make the story sound real.
5. Create pressure by saying that the matter is urgent or confidential.
6. Ask the victim to perform an action or provide information.

The attacker may use authority, trust, urgency, familiarity, or fear to make the victim cooperate.

### 3.2 Real-World Case Study: Business Email Compromise

Business Email Compromise (BEC) is a good example of how impersonation and pretexting can be used to steal money.

The FBI describes cases in which criminals make messages look as though they came from a trusted executive, employee, or business partner. They may then ask for a payment or change to bank details.

In one FBI-documented case, an accountant received an email that appeared to come from the company's CEO. The message claimed that the CEO was out of the country and needed a time-sensitive transfer connected with an acquisition. A person pretending to be a lawyer then provided additional instructions.

The accountant eventually transferred more than $737,000 to a bank in China. Later, it was discovered that the CEO had never sent the original request.

The attack worked because the criminals created a believable business situation and used the authority of the CEO to make the request seem legitimate.

### 3.3 Pretexting Prevention

**1. Verify the identity of the requester.**  
Do not rely only on the name or email address shown in a message. Contact the person through a known communication method.

**2. Use approval procedures.**  
Large financial transfers and important account changes should require appropriate authorization. One employee should not be expected to decide whether an unusual request is legitimate.

**3. Train employees about impersonation.**  
Employees should know that attackers can pretend to be managers, IT staff, customers, suppliers, or other trusted people.


## 4. Baiting

Baiting is based on giving the victim a reason to interact with something that appears useful or interesting.

The bait could be a physical USB drive, a free software download, a fake document, or another attractive item.

The attacker is hoping that curiosity, helpfulness, or the promise of a reward will make the victim ignore normal security precautions.

### 4.1 Physical and Digital Baiting

#### Physical baiting

A common example is an unknown USB drive being left in an office, parking area, classroom, or another place where someone is likely to find it.

The person may connect the drive because they want to see what is on it or because they want to find its owner.

If the device contains malicious files, this can create a security problem.

#### Digital baiting

Digital baiting works in a similar way but uses an online file or offer.

Examples include:

- Fake software
- Pirated applications
- Fake games
- Malicious documents
- Fake videos
- Suspicious browser extensions

The victim is attracted by the apparent benefit and then downloads or opens something malicious.

### 4.2 Case Study: Sogu USB Malware Campaign

A documented example of baiting is the Sogu USB malware campaign reported by WIRED in 2023. Mandiant researchers found that a China-linked group called UNC53 had used malware-infected USB drives to compromise at least 29 organizations. Many of the infections were linked to operations in African countries, although the affected organizations were international.

The attack depended on people plugging infected USB drives into computers. The Sogu malware used deceptive file names to make users more likely to open a malicious executable when they tried to access the drive. In some cases, the malware could then copy itself to other USB drives, allowing it to spread further.

This case is a good example of physical baiting because the USB drive itself becomes the lure. The victim may believe that the drive is useful or safe and may not realize that opening its contents can start the infection.

### 4.3 Supporting Research: USB Baiting Study

Researchers Tischer et al. also studied how people react to USB drives they find. They dropped 297 USB drives around a university campus and found that many of the drives were connected. Some participants did this because they wanted to find out who had lost the drive.

The study is useful because it shows why USB baiting can work even when there is no obvious financial reward. Curiosity and the intention to help someone can be enough to make a person take a security risk.

### 4.4 Baiting Prevention

**1. Do not connect unknown USB devices.**  
If an unknown USB drive is found, it should be handed to the appropriate IT or security staff instead of being connected to a computer.

**2. Download software from trusted sources.**  
Software should come from official websites or sources approved by the organization. Pirated software and unknown installers are especially risky.

**3. Control removable devices.**  
Organizations can use endpoint security and device-control policies to restrict unauthorized USB devices and reduce the chance of malicious files being executed.


## 5. Quid Pro Quo

Quid pro quo is another social engineering technique. In this case, the attacker offers something in return for information or cooperation.

For example, someone may call an employee pretending to be an IT support worker and offer to fix a computer problem. During the conversation, the attacker may ask the employee to provide a password or install remote-access software.

The attack uses the idea of **reciprocity**. Because the victim believes the attacker is helping them, they may feel more willing to cooperate.

### Prevention

- Verify IT or support staff through official channels.
- Never give passwords or MFA codes to another person.
- Only install remote-access software when it has been approved.
- Follow the organization's normal IT-support procedure.
- Report unusual support requests.


## 6. Comparison Table

| Attack Type | Primary Target | Psychological Lever | Best Countermeasure |
|---|---|---|---|
| Phishing | General users and employees | Trust, urgency, fear | Awareness training and email filtering |
| Spear phishing | Specific individuals | Personalization and trust | Verification and MFA |
| Whaling | Executives and senior staff | Authority and urgency | Independent approval |
| Vishing | Employees and customers | Authority and fear | Verify the caller independently |
| Smishing | Mobile users | Urgency and curiosity | Do not open unknown links |
| Pretexting | Employees and administrators | Trust and authority | Verify identity and requests |
| Baiting | Employees and general users | Curiosity and reward | USB/device controls and awareness |
| Quid pro quo | Employees and users | Reciprocity | Verify support requests |


## 7. Organizational Security-Awareness Training Checklist

A practical employee security-awareness program should cover at least these five areas:

### 1. Check Before Acting

Employees should stop and verify unusual requests, especially requests involving money, passwords, sensitive information, or account access.

### 2. Recognize Phishing

Training should include examples of phishing, spear phishing, whaling, vishing, and smishing. Employees should know what suspicious links and attachments look like.

### 3. Protect Authentication Information

Passwords, MFA codes, recovery codes, and other authentication information should never be shared with someone simply because they claim to be from IT, a bank, or another trusted organization.

### 4. Be Careful With Devices and Downloads

Employees should not connect unknown USB devices or install software from unknown sources. They should also avoid pirated applications and suspicious downloads.

### 5. Report Problems Quickly

Employees should have a simple way to report suspicious emails, calls, messages, devices, and account activity. They should also feel comfortable reporting mistakes quickly. Reporting an incident early can give the security team more time to respond.


## 8. Conclusion

Social engineering attacks are effective because they take advantage of normal human behavior. People naturally tend to trust familiar names, respond to urgent requests, help others, and become curious about unexpected things.

Phishing mainly uses fake communications to trick people. Pretexting uses a believable story or identity. Baiting uses something attractive to encourage the victim to interact with it. Quid pro quo uses an apparent exchange or service to gain cooperation.

The examples discussed in this report also show that social engineering can affect both individuals and large organizations. The 2020 Twitter incident is one example of how compromising employees can eventually affect important accounts. The BEC case demonstrates the financial impact that a convincing false request can have. The USB research shows that even an ordinary-looking device can be an effective lure.

Technical security controls are important, but they are not enough by themselves. Organizations should combine them with regular awareness training, strong authentication, verification procedures, access controls, and a simple process for reporting suspicious activity.


## 9. References

1. Cybersecurity and Infrastructure Security Agency (CISA). **Phishing Guidance: Stopping the Attack Cycle at Phase One.**  
   https://www.cisa.gov/resources-tools/resources/phishing-guidance-stopping-attack-cycle-phase-one

2. Federal Bureau of Investigation (FBI). **Business Email Compromise.**  
   https://www.fbi.gov/how-we-can-help-you/scams-and-safety/common-frauds-and-scams/business-email-compromise

3. MITRE ATT&CK. **Phishing — T1566.**  
   https://attack.mitre.org/techniques/T1566/

4. Verizon. **2024 Data Breach Investigations Report.**  
   https://www.verizon.com/business/resources/reports/dbir/

5. SANS Institute. **2025 Security Awareness Report.**
    https://www.sans.org/white-papers/sans-2025-security-awareness-report/

6. Twitter. **An Update on Our Security Incident.** July 2020.  
   https://blog.x.com/en_us/topics/company/2020/an-update-on-our-security-incident

7. Tischer, M., Durumeric, Z., Foster, S., Duan, S., Mori, A., Bursztein, E., & Bailey, M. **Users Really Do Plug in USB Drives They Find.** IEEE Symposium on Security and Privacy, 2016.  
    https://research.google/pubs/users-really-do-plug-in-usb-drives-they-find/

8. WIRED. **Chinese Spies Infected Dozens of Networks With Thumb Drive Malware.** 2023.  
    https://www.wired.com/story/china-usb-sogu-malware/


# Pardon the intrusion

## Description

In 2023, Cisco disclosed information about the active exploitation of a critical vulnerability in its software that allowed a remote, unauthenticated attacker to gain access to internet-facing network devices and create a local user account. This initial access paved the way for a privilege escalation vulnerability  disclosed around the same time that would eventually lead to a full compromise of the system.

The first vulnerability received a CVSS score of 10.0 CRITICAL. The flag is the CVE identifier for that vulnerability.



I began searching through Google based on this CVE description. The search revealed this article with the answer: [Multiple Vulnerabilities in Cisco IOS XE Software Web UI Feature](https://sec.cloudapps.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-iosxe-webui-privesc-j22SaA4z)





Flag: **leveleffect{CVE-2023-20198}**

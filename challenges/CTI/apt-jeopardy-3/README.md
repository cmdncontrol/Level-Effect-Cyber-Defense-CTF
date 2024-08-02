# APT jeopardy 3

## Description

Aerocorp, a subsidiary of Goodcorp, recently suffered a massive data breach by a sophisticated actor. Can you identify the group responsible?

- We believe employee credentials were initially compromised via spearphishing campaign.
- A handful of employees were social engineered into clicking on malicious attachments.
- The use of Cobalt Strike was observed in post-compromise network traffic.
- Operations found post-compromise PowerShell activity consistent with the PowerSploit framework.
- The attackers scheduled remote AT jobs via commandline.
- Forensics recovered a binary created around the time of compromise with the hash `40528e368d323db0ac5c3f5e1efe4889 `.
- Logged network traffic reveals that images with unusually large file sizes were uploaded to various GitHub accounts.

Name the APT!



After some research and using VirusTotal to hunt the hash, the threat actor was revealed: [VirusTotal - File - b731b4871f95c51ac47a3fa3fdc0704e624b0e923dc327af371dd851625646dd](https://www.virustotal.com/gui/file/b731b4871f95c51ac47a3fa3fdc0704e624b0e923dc327af371dd851625646dd/community)





Flag: **leveleffect{Leviathan}**

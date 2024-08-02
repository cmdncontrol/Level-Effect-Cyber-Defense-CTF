# SCH Part 10 - Slippery Slug

## Description

I'm the parasite. What is my hash? (SHA-256)

**[i] README** - The resources needed for this challenge are on the `Super Compromised Host (SCH)` VM on our [hosted platform](https://training.leveleffect.com/courses/2a4dccb7-3d5b-4312-816e-ef3728d25b67). Use the VM on the Phase 2 CTF module if you've run out of hours on the original module.

## Solution

Contunue using process explorer and dive into the DLLs that explorer.exe is loading

explorer.exe is loading a dll from my user roaming profile....

C:\Users\Administrator\AppData\Roaming\.cache\IECleanCache.dll

```
FC6C275FDE21FE347CA700D514F490B89AB521A15CCFCBDE9E46B79F1BC5E6C0
```

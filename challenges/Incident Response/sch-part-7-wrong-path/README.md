# SCH Part 7 - Wrong Path

## Description

One of these services is not like the others. Which is it?

**[i] README** - The resources needed for this challenge are on the `Super Compromised Host (SCH)` VM on our [hosted platform](https://training.leveleffect.com/courses/2a4dccb7-3d5b-4312-816e-ef3728d25b67). Use the VM on the Phase 2 CTF module if you've run out of hours on the original module.



## Solution

Use autoruns and look at services tab

Spooler is running from Temp



```
Spooler
```





8

wireshark on loopback adapter wait for olgreg.exe to fire and capture traffic

leveleffect{et_phone_home}

9

what process is olgreg running under??

explorer.exe

10

explorer.exe is loading a dll from my user roaming profile....

C:\Users\Administrator\AppData\Roaming\.cache\IECleanCache.dll

FC6C275FDE21FE347CA700D514F490B89AB521A15CCFCBDE9E46B79F1BC5E6C0

# SCH Part 5 - Pásale

## Description

I spawn 3 different processes. What are they?

The flag will be all three process names in alphabetical order, separated by colon without space, and SHA-256 hashed. Example:

`alpha.exe:bravo.exe:charlie.exe` -> `b9a6deb6189e70a01f92cd62fcb74ace7d2bbfb060205a18b2e936ae3cecd3c5`

**[i] README** - The resources needed for this challenge are on the `Super Compromised Host (SCH)` VM on our [hosted platform](https://training.leveleffect.com/courses/2a4dccb7-3d5b-4312-816e-ef3728d25b67). Use the VM on the Phase 2 CTF module if you've run out of hours on the original module.



## Solution



Use procmon to filter to what "Process Creates" that "olyreg.exe" generates

ipconfig.exe:net.exe:systeminfo.exe



**Flag; 59801DEEDAF4391AA2BB22564B17E47C32899EDCD9B67D51DC4A0F786E2C3CC9**

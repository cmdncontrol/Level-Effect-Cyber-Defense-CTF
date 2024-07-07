# Where Did I Come From?

## Description

This is for the `Zig.exe` binary!

I must have come from somewhere originally. (provide the full URL please) ("I" is not Zig.exe but rather what it calls)

Password to open archive: `infected`

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF Triage Workstation` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

WARNING - This challenge involves malware. Do not run this on your personal machine. Use a VM in the Level Effect CTF course or your own. 

## Files

* [zig.zip](files/zig.zip)



## Solution

Download burpsuite and ProxyCap

Install BurpSuite cert to root authority on VM host

Configure Proxy cap to use Burpsuite proxy

Configure host to use Burpsuite proxy

Configure Proxycap to capture traffic from Zig.exe

Enable Intercept in Burp

Run Zig.exe 

Capture traffic and find the culprit





**Flag: https://cda-lab-data.s3.amazonaws.com/FAQingFriday/rundlll32.exe**

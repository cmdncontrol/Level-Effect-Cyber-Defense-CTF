# Key Logger #2

## Description

This is for the `Zig.exe` binary!

I was a bit trickier to find! What was my file name?

Password to open archive: `infected`

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF Triage Workstation` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

WARNING - This challenge involves malware. Do not run this on your personal machine. Use a VM in the Level Effect CTF course or your own. 

## Files

* [zig.zip](files/zig.zip)

## Solution

Since we know that rundlll32.exe is the keylogger, let's use procmon to see what processes it is spawning. Filter your procmon to only look at process name equaling rundlll32.exe.

You'll see the standard base.out that you found earlier, but you'll also notice another file being written to..

```
misdirection.out
```

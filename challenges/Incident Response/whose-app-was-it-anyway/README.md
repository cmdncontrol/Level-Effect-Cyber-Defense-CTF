# Whose App Was It Anyway?

## Description

This is for the `Zig.exe` binary!

I ran the logger after I mislead you from the first console screen.

Password to open archive: `infected`

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF Triage Workstation` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

WARNING - This challenge involves malware. Do not run this on your personal machine. Use a VM in the Level Effect CTF course or your own. 

## Files

* [zig.zip](files/zig.zip)

## Solution

Zig runs checks and cmd's in the background. By using Process Explorer I was able to dive into each cmd. One of these added an application to the HKCU\Software\Microsoft\Windows\CurrentVersion\Run location to run on startup. 



```cmd
cmd /C "REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /V MyApp /D \"C:\Windows\rundlll32.exe\" /F"
```



**Flag: MyApp**





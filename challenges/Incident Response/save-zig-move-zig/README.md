# Save zig move zig

## Description

This is for the `Zig.exe` binary!

I am the name that called the zig mover.

Password to open archive: `infected`

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF Triage Workstation` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

WARNING - This challenge involves malware. Do not run this on your personal machine. Use a VM in the Level Effect CTF course or your own. 

## Files

* [zig.zip](files/zig.zip)



## Solution

Using Process Explorer after launching Zig, I captured a scheduled task creation. 



``` cmd
schtasks /Create /SC MINUTE /MO 5 /TN ScreenSaver /TR "powershell -ExecutionPolicy Bypass -File \"C:\ProgramData\movezig.ps1\"" /F
```

This task is called "ScreenSaver" and calls the powershell script movezig.ps1



**Flag: ScreenSaver**

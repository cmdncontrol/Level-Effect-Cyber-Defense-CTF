# Autoruns 3

## Description

Attackers compromised this Windows host and riddled it with persistence mechanisms in a see-what-sticks effort to maintain a foothold on the system. Can you find the third persistence mechanism?

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF - Autoruns Challenges` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).



## Solution

There is a suspicious Scheduled Task called "Disk Cleanup". The task calls a Base64 encoded string. 



``` cmd
cmd /c start /min "" powershell.exe -Command IEX([System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String((Get-ItemProperty -Path HKCU:\\SOFTWARE\\DiskCleaner).bGV2ZWxlZmZlY3R7aXRzX2JlY29taW5nX3NlbGZfYXdhcmV9)))
```

base64 string

```
bGV2ZWxlZmZlY3R7aXRzX2JlY29taW5nX3NlbGZfYXdhcmV9
```

decoded

```
leveleffect{its_becoming_self_aware}
```

**Flag: leveleffect{its_becoming_self_aware}**



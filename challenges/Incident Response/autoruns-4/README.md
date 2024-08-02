# Autoruns 4

## Description

Attackers compromised this Windows host and riddled it with persistence mechanisms in a see-what-sticks effort to maintain a foothold on the system. Can you find the fourth persistence mechanism?

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF - Autoruns Challenges` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

## Solutions

Autoruns revealed a service that was running called W64time.dll

A google search reveals that is tied to a threat actor "Turla" and isn't valid. Immediately that makes me suspicious of it. 

I found this article: [TinyTurla - Turla deploys new malware to keep a secret backdoor on victim machines (talosintelligence.com)](https://blog.talosintelligence.com/tinyturla/) 

It details how the .dll works for persistence, which seems to be focused on the registry entry for the service

It checks for a match in the Security value to operate... our security value is 

```
=6G6=67764EL?@E0BF:E60HbaE:>6N
```

ROT47 decode that and you get

```
leveleffect{not_quite_w32time}
```

**Flag: leveleffect{not_quite_w32time}**

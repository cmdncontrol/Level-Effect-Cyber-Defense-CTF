# MoTW

## Description

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF Triage Workstation` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

Find out where the file `forest_stream.jpg` was downloaded from on the Triage Workstation and you'll have your flag!



By running the below you will get details the image held from the web download. This reveals the flag.

```
more < forest_stream.jpg:Zone.Identifier
```

Output

```
[ZoneTransfer]
ZoneId=3
HostUrl=https://upload.wikimedia.org/wikipedia/commons/3/38/Teuchl_stream.jpg?flag=leveleffect%7Bgently_down_the_stream%7D
```



```
leveleffect{gently_down_the_stream}
```



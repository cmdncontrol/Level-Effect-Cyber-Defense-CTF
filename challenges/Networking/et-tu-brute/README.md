# Et tu, Brute?

## Description

Suspicious traffic has been seen on our company web server. Can you figure out the type of attack and find the flag?

The flag in this one is not in the usual `leveleffect{FLAG}` format. You'll know it when you find it. When you do, submit it in the format `leveleffect{INSERT_FLAG_HERE}`

## Files

* [http-traffic.pcap](files/http-traffic.pcap)



I used Wireshark to review the pcap file. Specifically I followed TCP Streams to see if any data was exposed and not encrypted. I was able to find a login event in packet 2739 that was successful with the following credentials

admin:y0u-kn0w-h77p-r3qu3575

```
leveleffect{y0u-kn0w-h77p-r3qu3575}
```



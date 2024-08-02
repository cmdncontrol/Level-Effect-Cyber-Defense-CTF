# Signed and secured

## Description

We have intercepted some network traffic after an alert hit from our SOC. Something seems off about some of the traffic here, but we haven't found anything concrete yet...

## Files

* [suspicious.pcapng](files/suspicious.pcapng)

## Solution

1. Open the packet capture in Wireshark

2. Add a filter based on Packet Details

3. Change filter type to String

4. Search for "leveleffect"

5. Packet #5363
   
   1. Recursively look through the Handshake Protocol and the Directory string contains the flag

```
leveleffect{b0gu5_c3rt1f1c4t3s}
```

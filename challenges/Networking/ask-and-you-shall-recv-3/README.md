# Ask and you shall recv 3

## Description

This time, the flag is hosted on a webserver running *internally* at `0.cloud.chals.io` on port `8888`. SSH is exposed on port `27141`. The private key for user `tunneler` is provided for download and the passphrase is `cda-od`.

Can you figure out how to get to the flag?

**Note** - sharing private keys is always a bad idea - this is only for the purposes of the challenge.

## Files

* [p3.private.key](files/p3.private.key)

## Solution

```bash
ssh -i p3.private.key -L 8080:localhost:8888 tunneler@0.cloud.chals.io -p 27141
```

Open browser and navigate to localhost:8080

The above will create an SSH tunnel and forward port 8888 from the internal 0.cloud.chals.io network to your local port 8080. 

```
leveleffect{attack_from_within}
```

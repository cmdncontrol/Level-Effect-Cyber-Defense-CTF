# Ask and you shall recv 2

## Description

Your goal is to SSH to `0.cloud.chals.io` over port `21986` using the private key provided for download. The passphrase is `cda-od`.

The username to connect with is the name of the operation led by law enforcement agencies in January 2021 that dealt a considerable blow to Emotet infrastructure.

**Note** - sharing private keys is always a bad idea - this is only for the purposes of the challenge.

## Files

* [p2.private.key](files/p2.private.key)

I literally did a Bing search for "emotet infrastructure take down 2021 operation name" and "Operation Ladybird" was presented. This provided the username in question.

```bash
ssh -i p2.private.key -p 21986 ladybird@0.cloud.chals.io
```

```
Nice job! Here's your flag: leveleffect{private_keys_are_private_for_a_reason}
```

```
leveleffect{private_keys_are_private_for_a_reason}
```

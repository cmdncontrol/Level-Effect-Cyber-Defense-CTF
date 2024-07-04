# Think you're flag worthy?

## Description

The flag may be encrypted but it most certainly can be recovered. Can you retrieve it?

There are a few ways to approach this one, some more efficient than others.

```ps1
$key = "seinfeld"; -join ([char[]](([Text.Encoding]::UTF8.GetString(([Convert]::FromBase64String("GgNJRkdFNxcHFwAAAThWXjoWJxsKCSMWNggZGh9NNzcKFh0LC0spCgUMGwEICAkKBzhTVCEAGCEdEwAcCQsBAR0RPw8UDA0GHwBBSTYpKSUgIE5HT0xMH3lFSU5GQQoIEgJJU0ZHAAEFAAULAAMJBwceGgsUAAINBxw2AAkSEUZ5RUlORjIeDQcARCETERwRB0VLLwUGCRcARQ4cBwsYARdJSRoOAEwCHwQOTg8WVkRXAwUPAUdmGVMABR0DRRduU0VJTjEXBRAWSCYbEhUZEFNHKAZKRQ0MX0UIBkdFNQsGRQ0HAgtLEFMWCBdGEQQBUwgICQ8GTBMcFw1PRG8R") | % { [char]($_ -bxor [byte][char]$key[$i++ % $key.Length]) } -begin { $i=0 }))))) | iex
```

## Solution

```python
import base64

def xor_decrypt(encoded_bytes, key):
    key_bytes = key.encode('utf-8')
    decrypted_chars = []
    key_length = len(key_bytes)
    
    for i, byte in enumerate(encoded_bytes):
        decrypted_chars.append(chr(byte ^ key_bytes[i % key_length]))
    
    return ''.join(decrypted_chars)

# Base64 encoded string from the script
base64_string = "GgNJRkdFNxcHFwAAAThWXjoWJxsKCSMWNggZGh9NNzcKFh0LC0spCgUMGwEICAkKBzhTVCEAGCEdEwAcCQsBAR0RPw8UDA0GHwBBSTYpKSUgIE5HT0xMH3lFSU5GQQoIEgJJU0ZHAAEFAAULAAMJBwceGgsUAAINBxw2AAkSEUZ5RUlORjIeDQcARCETERwRB0VLLwUGCRcARQ4cBwsYARdJSRoOAEwCHwQOTg8WVkRXAwUPAUdmGVMABR0DRRduU0VJTjEXBRAWSCYbEhUZEFNHKAZKRQ0MX0UIBkdFNQsGRQ0HAgtLEFMWCBdGEQQBUwgICQ8GTBMcFw1PRG8R"

# Decode the Base64 string to bytes
encoded_bytes = base64.b64decode(base64_string)

# XOR decrypt using the key "seinfeld"
key = "seinfeld"
decrypted_string = xor_decrypt(encoded_bytes, key)

print(decrypted_string)

```





```bash
┌──(kali㉿kali)-[~/Desktop]
└─$ python decode.py             
if (! [string]::IsNullOrEmpty([System.Environment]::GetEnvironmentVariable('PLEASE'))) {
    $flag = "leveleffect{serenity_now}"
    Write-Output "Access granted, the flag is: $flag"
} else {
    Write-Output "Ah, ah, ah! You didn't say the magic word!"
}

```



**Flag: leveleffect{serenity_now}**

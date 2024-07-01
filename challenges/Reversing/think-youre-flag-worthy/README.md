# Think you're flag worthy?

## Description

The flag may be encrypted but it most certainly can be recovered. Can you retrieve it?

There are a few ways to approach this one, some more efficient than others.

```ps1
$key = "seinfeld"; -join ([char[]](([Text.Encoding]::UTF8.GetString(([Convert]::FromBase64String("GgNJRkdFNxcHFwAAAThWXjoWJxsKCSMWNggZGh9NNzcKFh0LC0spCgUMGwEICAkKBzhTVCEAGCEdEwAcCQsBAR0RPw8UDA0GHwBBSTYpKSUgIE5HT0xMH3lFSU5GQQoIEgJJU0ZHAAEFAAULAAMJBwceGgsUAAINBxw2AAkSEUZ5RUlORjIeDQcARCETERwRB0VLLwUGCRcARQ4cBwsYARdJSRoOAEwCHwQOTg8WVkRXAwUPAUdmGVMABR0DRRduU0VJTjEXBRAWSCYbEhUZEFNHKAZKRQ0MX0UIBkdFNQsGRQ0HAgtLEFMWCBdGEQQBUwgICQ8GTBMcFw1PRG8R") | % { [char]($_ -bxor [byte][char]$key[$i++ % $key.Length]) } -begin { $i=0 }))))) | iex

```


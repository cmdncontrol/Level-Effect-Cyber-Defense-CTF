# Autoruns 2

## Description

Attackers compromised this Windows host and riddled it with persistence mechanisms in a see-what-sticks effort to maintain a foothold on the system. Can you find the second persistence mechanism?

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF - Autoruns Challenges` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

## Solution

```powershell
Get-WmiObject -Namespace "root\subscription" -Class __EventFilter | Format-Table -Property *
```

```powershell
PSComputerName  __GENUS __CLASS       __SUPERCLASS        __DYNASTY     __RELPATH                                                                 __PROPERTY_COUNT __DERIVATI
                                                                                                                                                                   ON
--------------  ------- -------       ------------        ---------     ---------                                                                 ---------------- ----------
EC2AMAZ-QJLIUMV       2 __EventFilter __IndicationRelated __SystemClass __EventFilter.Name="SCM Event Log Filter"                                                6 {__Indi...
EC2AMAZ-QJLIUMV       2 __EventFilter __IndicationRelated __SystemClass __EventFilter.Name="bGV2ZWxlZmZlY3R7YW5vdGhlcl9vbmVfYml0ZXNfdGhlX2R1c3R9"                6 {__Indi...
```

```
bGV2ZWxlZmZlY3R7YW5vdGhlcl9vbmVfYml0ZXNfdGhlX2R1c3R9
```

base64 decoded:

```
leveleffect{another_one_bites_the_dust}
```

**Flag: leveleffect{another_one_bites_the_dust}**

You can also use AutoRuns and look at the WMI tab for this one. There is a CommandLineEventConsumer launching notepad.exe and the name of the consumer is the same base64 encoded string

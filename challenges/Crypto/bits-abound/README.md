# Bits abound

## Description

I have a key with a curious code etched into it but not a clue where it goes. Here, take a look and let me know if you discover anything even the least bit significant about it.

## Files

* [key.png](files/key.png)

## Solution

The description hints at something being the least significant. This leads us towards this being a Least Signifcant Bit (LSB) challenge. It seems varying tools give varying results... zsteg was successful in this challenge for me. 

Let's toss the .png file to zsteg and see what it can find. 

```
┌──(root㉿kali)-[/home/kali/Downloads/zsteg-master]
└─# zsteg -a /home/kali/Desktop/key.png 
b1,rgb,lsb,xy       .. text: "TW9Xb01vR2xEaVVxVmtYVVVlfnpUfn5+VmV+a09ufn5WZX5+Tm1EfklvU3c="
```

It found a string that is seemingly base64 encoded. 

```
 TW9Xb01vR2xEaVVxVmtYVVVlfnpUfn5+VmV+a09ufn5WZX5+Tm1EfklvU3c=
```

However, when we decode it we are left with this

```
MoWoMoGlDiUqVkXUUe~zT~~~Ve~kOn~~Ve~~NmD~IoSw
```

The directions say something about a curious code etched into the image which is "21A". Let's try to XOR the output with that value.

```
leveleffect{way_to_put_two_and_two_together}
```

**Flag: leveleffect{way_to_put_two_and_two_together}**

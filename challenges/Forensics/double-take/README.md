# Double take

## Description

I'm sure this image is hiding something, but nothing stands out no matter how I look at it. Maybe it's just stringing me along...

## Files

* [doubletake.jpg](files/doubletake.jpg)

## Solution

Download Strings2 to assist with quick identification of encoding

```
strings2 doubletake.jpg
```

```
D:\Downloads>strings2 doubletake.jpg
JFIF
Compressed by jpeg-recompress
"*%%*424DD\

"*%%*424DD\
Öjc^:
,;$
#
-Wt'Q
mKqZ
?[c$8
UwA]O
ef      %e
>ffffffffffffffffffffffffffffffffffffq
$3%B4ART&56CDQS
sRM-1
r3XQUާdm
+nRAEV+j
nBDieX8,
43.1
SPIG
1,'.
B M}.
a.7:-9L
sSPg_G
eb6:5\W0>
{0QU1+_HA¢s
tr..o
ENpcl.
l<-->
U548:e
8c7eggt
W,1MA
o8629+
cb7s4HE
xo/T1Aq
S12si
) C,l
bdM9r(a
[%Sn+qO4
TNN18N
rns:-D
CIx2uf
o009
`HB: M
tf0vYtnk
/S88
oDy> \u
ALcIgJ
0m1RCi
  TVB
UD #b
Tх2 1l
1K440c
nDCA
1d,RE
bGV2ZWxlZmZlY3R7c25lYWt5X3V0Zi0xNmxlfQ==
```

The last row of output is clearly base64, let's toss it into cyberchef to decode it



**Flag: leveleffect{sneaky_utf-16le}**

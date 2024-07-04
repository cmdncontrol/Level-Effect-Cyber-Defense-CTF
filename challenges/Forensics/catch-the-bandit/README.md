# Catch the bandit

## Description

Can you catch the bandit and recover the flag?

WARNING - The binary in this challenge is benign but we advise to run it on a VM. Do not run this on your personal machine. Use a VM in the Level Effect CTF course or your own. 

## Files

* [bandit.exe](files/bandit.exe)



## Solution

Capture the output of the program programatically

``` cmd
bandit.exe > output.txt
```

Redirect output to a text file and read that text file after

``` cmd
C:\Users\Administrator\Downloads>type output.txt
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
Flag: leveleffect{b4nd17_c4ugh7}
```

**Flag: leveleffect{b4nd17_c4ugh7}**

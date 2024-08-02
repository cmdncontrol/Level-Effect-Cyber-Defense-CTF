# Magic repairman

## Description

You'll probably need some tools to fix this one. Hexedit, HxD or [hexed.it](https://hexed.it/) are commonly used.

## Files

* [magic_repairman.png](files/magic_repairman.png)



The file is supposed to be a PNG as we can tell by the extension. Based on the prompt I imagine the magic numbers are wrong to allow this file to open. Using Hexedit I was able to edit the second hex to 50 instead of 52 after googling the magic numbers for png files. The image opened and the flag was shown.



```
leveleffect{corrupted_magic_purification}
```


